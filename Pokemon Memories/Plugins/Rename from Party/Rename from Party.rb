MenuHandlers.add(:party_menu, :rename, {
  "name"      => _INTL("Rename"),
  "order"     => 55,
  "condition" => proc { |screen, party, party_idx| next !party[party_idx].egg? },
  "effect"    => proc { |screen, party, party_idx|
    pkmn = party[party_idx]
    name = ""
    if $game_variables[52]==0
      name = pbMessageFreeText("#{pkmn.speciesName}'s nickname?",_INTL(""),false,Pokemon::MAX_NAME_SIZE) { screen.pbUpdate }
    else
      name = pbMessageFreeText("Surnom de #{pkmn.speciesName}?",_INTL(""),false,Pokemon::MAX_NAME_SIZE) { screen.pbUpdate }
    end
    name=pkmn.speciesName if name ==""
    pkmn.name=name
    screen.pbDisplay(_INTL("{1} was renamed to {2}.",pkmn.speciesName,pkmn.name))
  }
})