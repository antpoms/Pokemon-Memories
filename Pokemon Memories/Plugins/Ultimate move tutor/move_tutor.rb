#######################Settings#############################
MOVETUTOR=34
UCmoves=[:JUDGMENT,:OUTRAGE]
Poke=[:PSYDUCK]
BANVAR=35
BORW=71
Blacklist=[[],[:BATONPASS,:BELLYDRUM,:CALMMIND,:COTTONGUARD,:DRAGONDANCE,:SHELLSMASH,:SHIFTGEAR,:SPIKES,:SPORE,:STEALTHROCK,:SWORDSDANCE,:TOXIC,:TRICKROOM,:AURORAVEIL,:AGILITY,:QUIVERDANCE,:ACROBATICS,:DUALCHOP,:DUALWINGBEAT,:SCALESHOT,:TRIPLEAXEL,:POPULATIONBOMB,60],[:SHELLSMASH,:QUIVERDANCE,100],[]]
Whitelist=[[],[:OUTRAGE],[:OUTRAGE,:DRAGONASCENT]]
############################################################

class MoveRelearnerScreen
  def eggMoves(pkmn)
    babyspecies=pkmn.species
    babyspecies = GameData::Species.get(babyspecies).get_baby_species(false, nil, nil)
    eggmoves=GameData::Species.get_species_form(babyspecies, pkmn.form).egg_moves
    return eggmoves
  end
		
	
  def premoves(pkmn)  
      babyspecies=pkmn.species
      babyspecies = GameData::Species.get(babyspecies).get_baby_species(false, nil, nil)
	  return [] if babyspecies=pkmn.species 
	  pkmn.species=babyspecies
	  moves= []
	  pkmn.getMoveList.each do |m|
        next if m[0] > pkmn.level || pkmn.hasMove?(m[1])
        moves.push(m[1]) if !moves.include?(m[1]) && validmove(m[1], pkmn)
      end
      tmoves = []
      if pkmn.first_moves
        for i in pkmn.first_moves
          tmoves.push(i) if !pkmn.hasMove?(i) && !moves.include?(i) && validmove(m[1], pkmn)
        end
      end
	  moves = tmoves + moves 
      return moves
  end
	
  def getMoveList
    return species_data.moves
  end
  
  def tutorMoves(pkmn)
    return pkmn.species_data.tutor_moves
  end
  
  def hackmoves
    moves=[]
	GameData::Move.each { |i| moves.push(i.id) }
	return moves
  end
  
  def compare_names(move,pkmn)
    pk= pkmn.name[0]
	m= move.real_name[0]
	return (pk==m)	
  end
  
  def validmove(move, pkmn) # Ajout de pkmn ici
    # 1. Vérification PRIORITAIRE : Est-ce un move naturel du Pokémon ?
    # On vérifie si le move est dans sa liste de base (par niveau)
    is_natural = false
    pkmn.getMoveList.each do |m|
      if m[1] == move && m[0] <= pkmn.level
        is_natural = true
        break
      end
    end
    
    # Si c'est un move appris naturellement au niveau actuel ou précédent, on autorise direct.
    return true if is_natural

    # 2. Sinon, on applique les règles habituelles de Blacklist/Whitelist
    if $game_switches[BORW]
        return true if Whitelist[$game_variables[BANVAR]].include?(move)
        whitelist = Whitelist[$game_variables[BANVAR]]
        for i in 0...whitelist.length
            if whitelist[i].is_a?(Numeric)
                rmove = GameData::Move.get(move)
                return false if rmove.power > whitelist[i]
            end
        end
    else
        return false if Blacklist[$game_variables[BANVAR]].include?(move)
        blacklist = Blacklist[$game_variables[BANVAR]]
        for i in 0...blacklist.length
            if blacklist[i].is_a?(Numeric)
                rmove = GameData::Move.get(move)
                return false if rmove.power > blacklist[i]
            end
        end
    end 
    return true
  end
	
  def pbGetRelearnableMoves(pkmn)
    return [] if !pkmn || pkmn.egg? || pkmn.shadowPokemon?
    moves = []
    pkmn.getMoveList.each do |m|
      next if m[0] > pkmn.level || pkmn.hasMove?(m[1])
	  moves.push(m[1]) if !moves.include?(m[1]) && validmove(m[1], pkmn)
    end
    if pkmn.first_moves
	  tmoves = []
      for i in pkmn.first_moves
		moves.push(i) if !pkmn.hasMove?(i) && !moves.include?(i) && validmove(i, pkmn)
      end
	  moves = tmoves + moves
    end
	
	######pre-evo moves
	if $game_variables[MOVETUTOR]>=0 
	  specie=pkmn.species
      babyspecies=pkmn.species
      babyspecies = GameData::Species.get(babyspecies).get_baby_species(false, nil, nil) 
	  pkmn.species=babyspecies
	  pmoves=[]
	  pkmn.getMoveList.each do |m|
        next if m[0] > pkmn.level || pkmn.hasMove?(m[1])
		pmoves.push(m[1]) if !moves.include?(m[1]) && validmove(m[1], pkmn)
      end
	  moves=pmoves + moves
	  pkmn.species=specie
	end
    
    # add tutor moves, eggmoves and pre evolution moves
    if $game_variables[MOVETUTOR]>=1				#modify to == if you want to make distinct NPCs
      eggmoves=eggMoves(pkmn)
	  for i in eggmoves
		  moves.push(i) if !pkmn.hasMove?(i) && !moves.include?(i) && validmove(i, pkmn) 
      end
    end
    if $game_variables[MOVETUTOR]>=2				#modify to == if you want to make distinct NPCs
      tutormoves= tutorMoves(pkmn)
	  for i in tutormoves
		  moves.push(i) if !pkmn.hasMove?(i) && !moves.include?(i) && validmove(i, pkmn)
      end
    end
	if $game_variables[MOVETUTOR]==3	#hackmon
	  hmoves = hackmoves
	  for i in hmoves 
		  moves.push(i) if !pkmn.hasMove?(i) && !moves.include?(i) && validmove(i, pkmn)
      end
	end
	if $game_variables[MOVETUTOR]==4    #Stabmon
	  smoves=[]
	  if i.respond_to?(:maxMove?)
		GameData::Move.each { |i| smoves.push(i.id) if (i.type==pkmn.types[0] || i.type==pkmn.types[1]) && (!i.maxMove? && !i.zMove?) }	
	  else 
		GameData::Move.each { |i| smoves.push(i.id) if (i.type==pkmn.types[0] || i.type==pkmn.types[1])}
	  end
	  for i in smoves
		  moves.push(i) if !pkmn.hasMove?(i) && !moves.include?(i) && validmove(i, pkmn) 
	  end
	end
	if $game_variables[MOVETUTOR]==5    #Alphabetmon
	  smoves=[]
	  if i.respond_to?(:maxMove?)
		GameData::Move.each { |i| smoves.push(i.id) if compare_names(i,pkmn) && (!i.maxMove? && !i.zMove?)}	
	  else 
		GameData::Move.each { |i| smoves.push(i.id) if compare_names(i,pkmn)}
	  end
	  for i in smoves
		  moves.push(i) if !pkmn.hasMove?(i) && !moves.include?(i) && validmove(i, pkmn) 
	  end
	end	
    if $game_variables[MOVETUTOR]>=6	#universal move tutor		
		for i in UCmoves
		    moves.push(i) if !pkmn.hasMove?(i) && !moves.include?(i) && validmove(i, pkmn)
		end
	end
	if $game_variables[MOVETUTOR]>=7	#custom move tutor	
		pmoves=[:JUDGMENT]
		if Poke.include?(pkmn.species)
			for i in pmoves
				moves.push(i) if !pkmn.hasMove?(i) && !moves.include?(i) && validmove(i, pkmn)
			end
		end
	end		
    moves.sort! { |a, b| a.downcase <=> b.downcase } #sort moves alphabetically
    return moves | []   # remove duplicates
  end
  
end


 

