module QuestModule

  # --- QUEST 0 ---
  QuestPark = {
    :ID => "0",
    :Name => "(Quête principale) Entraînement !",
    :QuestGiver => "Raya",
    :Stage1 => "Affrontez 4 dresseurs du Parc.",
    :Stage2 => "Retournez voir Raya.",
    :Location1 => "Parc Flora",
    :Location2 => "Parc Flora",
    :QuestDescription => "J'ai besoin d'entraînement avant de pouvoir partir à l'aventure !",
    :RewardString => "Un stage"
  }

  QuestPark_en = {
    :ID => "1",
    :Name => "(Main Quest) Training!",
    :QuestGiver => "Raya",
    :Stage1 => "Battle 4 trainers in the Park.",
    :Stage2 => "Return to Raya.",
    :Location1 => "Flora Park",
    :Location2 => "Flora Park",
    :QuestDescription => "I need some training before I can head out on an adventure!",
    :RewardString => "An internship"
  }

  # --- QUEST 1 ---
  QuestWooper = {
    :ID => "2",
    :Name => "L'épreuve du roi",
    :Stage1 => "Prouvez votre valeur au roi de la mare.",
    :Location1 => "Mare, Sud-Est",
    :StageLabel1 => "1",
    :QuestDescription => "Le roi de la mare souhaite juger vos capacités.",
  }

  QuestWooper_en = {
    :ID => "3",
    :Name => "The King's Trial",
    :Stage1 => "Prove your worth to the King of the Pond.",
    :Location1 => "Pond, South-East",
    :StageLabel1 => "1",
    :QuestDescription => "The King of the Pond wishes to judge your abilities.",
  }

  # --- QUEST 2 ---
  QuestYamper = {
    :ID => "4",
    :Name => "Cache-chache",
    :Stage1 => "Examinez la cloche",
    :Stage2 => "retrouvez voltoutou !",
    :Location1 => "Cloche ancestrale, Nord-Est",
    :StageLabel1 => "1",
    :StageLabel2 => "2",
    :QuestDescription => "On raconte que le son de la cloche attire toute sorte de Pokémon",
  }

  QuestYamper_en = {
    :ID => "5",
    :Name => "Hide-and-Seek",
    :Stage1 => "Examine the bell",
    :Stage2 => "Find Yamper!",
    :Location1 => "Ancestral Bell, North-East",
    :StageLabel1 => "1",
    :StageLabel2 => "2",
    :QuestDescription => "It is said that the sound of the bell attracts all kinds of Pokémon.",
  }

  # --- QUEST 3 ---
  QuestGrowlithe = {
    :ID => "6",
    :Name => "Énigme antique",
    :Stage1 => "Résolvez les énigmes des ruines",
    :Location1 => "Ruines antiques, Nord-Ouest",
    :Location2 => "Ruines antiques, Nord-Ouest",
    :StageLabel1 => "1",
    :QuestDescription => "On raconte que les ruines cachent un mystère qui ne se révèle qu'aux élus d'Arceus.",
  }

  QuestGrowlithe_en = {
    :ID => "7",
    :Name => "Ancient Riddle",
    :Stage1 => "Solve the riddles of the ruins",
    :Location1 => "Ancient Ruins, North-West",
    :Location2 => "Ancient Ruins, North-West",
    :StageLabel1 => "1",
    :QuestDescription => "Rumor has it the ruins hide a mystery revealed only to Arceus's chosen ones.",
  }

  # --- QUEST 4 ---
  QuestElekid = {
    :ID => "8",
    :Name => ".- .. -- .- -. - / .--. . .-. -.. ..-",
    :Stage1 => "Aidez Elekid !",
    :Stage2 => ".-. .- -- . -. . .-. / .-.. .----. .- .. -- .- -. - / .--.- / . .-.. . -.- .. -..",
    :Location1 => "Train SylpheCo, Sud-Ouest",
    :Location2 => "Train SylpheCo, Sud-Ouest",
    :StageLabel1 => "1",
    :StageLabel2 => "2",
    :QuestDescription => "Un Elekid semble avoir besoin de votre aide !",
    :RewardString => ". .-.. . -.- .. -.."
  }

  QuestElekid_en = {
    :ID => "9",
    :Name => ".-.. --- ... - / -- .- --. -. . -",
    :Stage1 => "Help Elekid!",
    :Stage2 => ".-. . - ..- .-. -. / - .... . / -- .- --. -. . - / - --- / . .-.. . -.- .. -..",
    :Location1 => "Silph Co. Train, South-West",
    :Location2 => "Silph Co. Train, South-West",
    :StageLabel1 => "1",
    :StageLabel2 => "2",
    :QuestDescription => "An Elekid seems to need your help!",
    :RewardString => ". .-.. . -.- .. -.."
  }

  # --- QUEST 5 ---
  QuestKilowattrel = {
    :ID => "10",
    :Name => "Le dernier pèlerinage",
    :Stage1 => "Défendez le bâteau.",
    :Location1 => "Quai, Sud-Ouest",
    :StageLabel1 => "1",
    :QuestDescription => "Un vieil homme a besoin de votre aide pour sa traversée.",
  }

  QuestKilowattrel_en = {
    :ID => "11",
    :Name => "The Last Pilgrimage",
    :Stage1 => "Defend the boat.",
    :Location1 => "Docks, South-West",
    :StageLabel1 => "1",
    :QuestDescription => "An old man needs your help for his crossing.",
  }

  # --- QUEST 6 ---
  QuestKirlia = {
    :ID => "12",
    :Name => "Blind Test",
    :Stage1 => "Aidez Dan",
    :Location1 => "Plage, Sud-Est",
    :StageLabel1 => "1",
    :QuestDescription => "Aidez Dan à monter son spectacle.",
  }

  QuestKirlia_en = {
    :ID => "13",
    :Name => "Blind Test",
    :Stage1 => "Help Dan",
    :Location1 => "Beach, South-East",
    :StageLabel1 => "1",
    :QuestDescription => "Help Dan set up his show.",
  }

  # --- QUEST 7 ---
  QuestNemona = {
    :ID => "14",
    :Name => "Dur de débuter...",
    :Stage1 => "Aidez une petite fille à retrouver la motivation.",
    :Location1 => "Aire de jeu, Nord-Est",
    :StageLabel1 => "1",
    :QuestDescription => "Aidez une petite fille à retrouver la motivation.",
  }

  QuestNemona_en = {
    :ID => "15",
    :Name => "Starting is Hard...",
    :Stage1 => "Help a little girl find her motivation.",
    :Location1 => "Playground, North-East",
    :StageLabel1 => "1",
    :QuestDescription => "Help a little girl find her motivation.",
  }

  # --- QUEST 8 ---
  QuestGab = {
    :ID => "16",
    :Name => "Snake",
    :Stage1 => "Gagnez contre Gab",
    :Location1 => "Parc, Nord",
    :StageLabel1 => "1",
    :QuestDescription => "Apprenez les bonnes manière à ce type.",
  }

  QuestGab_en = {
    :ID => "17",
    :Name => "Snake",
    :Stage1 => "Win against Gab",
    :Location1 => "Park, North",
    :StageLabel1 => "1",
    :QuestDescription => "Teach this guy some manners.",
  }

  # --- QUEST 9 ---
  QuestMagikarp = {
    :ID => "18",
    :Name => "Magikarp-sama",
    :Stage1 => "Gagnez contre Magikarp-sama",
    :Location1 => "Plage, Sud",
    :StageLabel1 => "1",
    :QuestDescription => "Suivez les enseignements du maître.",
  }

  QuestMagikarp_en = {
    :ID => "19",
    :Name => "Magikarp-sama",
    :Stage1 => "Win against Magikarp-sama",
    :Location1 => "Beach, South",
    :StageLabel1 => "1",
    :QuestDescription => "Follow the master's teachings.",
  }

  # --- QUEST 10 ---
  QuestLusamine = {
    :ID => "20",
    :Name => "Profonds remords...",
    :Stage1 => "Parlez à la femme perdue...",
    :Location1 => "Plage, Sud",
    :StageLabel1 => "1",
    :QuestDescription => "Parlez à la femme perdue...",
  }

  QuestLusamine_en = {
    :ID => "21",
    :Name => "Deep Regrets...",
    :Stage1 => "Talk to the lost woman...",
    :Location1 => "Beach, South",
    :StageLabel1 => "1",
    :QuestDescription => "Talk to the lost woman...",
  }

  # --- QUEST 11 ---
  QuestSteve = {
    :ID => "22",
    :Name => "+20% sur les KPI 2032",
    :Stage1 => "Gagnez contre le CGRI lead manager.",
    :Location1 => "Hôtel, Est",
    :StageLabel1 => "1",
    :QuestDescription => "Aidez le pauvre employé de Nexus.",
  }

  QuestSteve_en = {
    :ID => "23",
    :Name => "+20% on 2032 KPIs",
    :Stage1 => "Win against the CGRI lead manager.",
    :Location1 => "Hotel, East",
    :StageLabel1 => "1",
    :QuestDescription => "Help the poor Nexus employee.",
  }

  # --- QUEST 12 ---
  QuestBeach = {
    :ID => "24",
    :Name => "(Quête principale) Capteurs",
    :QuestGiver => "Raya",
    :Stage1 => "Placez 5 capteurs aux coordonnées indiquées.",
    :Stage2 => "Retournez voir Raya.",
    :Location1 => "Plage d'Inarritz",
    :Location2 => "Plage d'Inarritz, devant l'hôtel",
    :QuestDescription => "Raya vous a demandé de placer 5 capteur pour cartographier la zone.",
  }

  QuestBeach_en = {
    :ID => "25",
    :Name => "(Main Quest) Sensors",
    :QuestGiver => "Raya",
    :Stage1 => "Place 5 sensors at the indicated coordinates.",
    :Stage2 => "Return to Raya.",
    :Location1 => "Inarritz Beach",
    :Location2 => "Inarritz Beach, in front of the hotel",
    :QuestDescription => "Raya asked you to place 5 sensors to map the area.",
  }

  # --- QUEST 13 ---
  QuestStaryu = {
    :ID => "26",
    :Name => "Rêve bizarre",
    :Stage1 => "Affronter l'être ultime.",
    :Location1 => "Plage, Sud-Est",
    :StageLabel1 => "1",
    :QuestDescription => "Parlez au Stari malicieux",
  }

  QuestStaryu_en = {
    :ID => "27",
    :Name => "Bizarre Dream",
    :Stage1 => "Face the ultimate being.",
    :Location1 => "Beach, South-East",
    :StageLabel1 => "1",
    :QuestDescription => "Talk to the mischievous Staryu.",
  }

  # --- QUEST 14 ---
  QuestBeedrill = {
    :ID => "28",
    :Name => "Rancoeur",
    :Stage1 => "Affronter Dardargnan.",
    :Location1 => "Laboratoire, Ouest",
    :StageLabel1 => "1",
    :QuestDescription => "Parlez au Dardargnan haineux",
  }

  QuestBeedrill_en = {
    :ID => "29",
    :Name => "Grudge",
    :Stage1 => "Face Beedrill.",
    :Location1 => "Laboratory, West",
    :StageLabel1 => "1",
    :QuestDescription => "Talk to the hateful Beedrill.",
  }

  # --- QUEST 15 ---
  QuestJane = {
    :ID => "30",
    :Name => "Mélodie du Deuil",
    :Stage1 => "Ecoutez la violoniste",
    :Location1 => "Pont, Est",
    :StageLabel1 => "1",
    :QuestDescription => "Parlez à la violoniste",
  }

  QuestJane_en = {
    :ID => "31",
    :Name => "Mourning Melody",
    :Stage1 => "Listen to the violinist",
    :Location1 => "Bridge, East",
    :StageLabel1 => "1",
    :QuestDescription => "Talk to the violinist",
  }

  # --- QUEST 16 ---
  QuestStrangeMan = {
    :ID => "32",
    :Name => "Discussion au coin du feu",
    :Stage1 => "Parlez à l'homme encapuchoné.",
    :Location1 => "Au fond de la montagne",
    :StageLabel1 => "1",
    :QuestDescription => "Parlez à l'homme encapuchoné.",
  }

  QuestStrangeMan_en = {
    :ID => "33",
    :Name => "Fire-side Chat",
    :Stage1 => "Talk to the hooded man.",
    :Location1 => "Deep in the mountain",
    :StageLabel1 => "1",
    :QuestDescription => "Talk to the hooded man.",
  }

  # --- QUEST 17 ---
  QuestTypeNull = {
    :ID => "34",
    :Name => "L'Expérience",
    :Stage1 => "Affronter le sujet issue du projet RKS",
    :Location1 => "Grotte, Est",
    :StageLabel1 => "1",
    :QuestDescription => "Affronter le sujet issue du projet RKS",
  }

  QuestTypeNull_en = {
    :ID => "35",
    :Name => "The Experiment",
    :Stage1 => "Face the subject from the RKS project",
    :Location1 => "Cave, East",
    :StageLabel1 => "1",
    :QuestDescription => "Face the subject from the RKS project",
  }

  # --- QUEST 18 ---
  QuestFroslass = {
    :ID => "36",
    :Name => "La dame à la robe blanche",
    :Stage1 => "Affronter le fantôme du passé.",
    :Location1 => "Maison, Extérieur neige",
    :StageLabel1 => "1",
    :QuestDescription => "Parlez à la vieille dame",
  }

  QuestFroslass_en = {
    :ID => "37",
    :Name => "The Lady in the White Dress",
    :Stage1 => "Face the ghost of the past.",
    :Location1 => "House, Snowy Exterior",
    :StageLabel1 => "1",
    :QuestDescription => "Talk to the old lady.",
  }

  # --- QUEST 19 ---
  QuestEevee = {
    :ID => "38",
    :Name => "Pouvoir des gènes",
    :Stage1 => "Affronter le... évoli ?",
    :Location1 => "Montagne, extérieur neige, Est",
    :StageLabel1 => "1",
    :QuestDescription => "Parlez à l'évoli instable",
  }

  QuestEevee_en = {
    :ID => "39",
    :Name => "Power of Genes",
    :Stage1 => "Face... Eevee?",
    :Location1 => "Mountain, Snowy Exterior, East",
    :StageLabel1 => "1",
    :QuestDescription => "Talk to the unstable Eevee.",
  }

  # --- QUEST 20 ---
  QuestZinnia = {
    :ID => "40",
    :Name => "Sommet Delta",
    :Stage1 => "Affronter la dresseuse au sommet",
    :Location1 => "Sommet de la Montagne",
    :StageLabel1 => "1",
    :QuestDescription => "Parlez à la dresseuse au sommet",
  }

  QuestZinnia_en = {
    :ID => "41",
    :Name => "Delta Summit",
    :Stage1 => "Face the trainer at the summit",
    :Location1 => "Mountain Summit",
    :StageLabel1 => "1",
    :QuestDescription => "Talk to the trainer at the summit",
  }

  # --- QUEST 21 ---
  QuestSally = {
    :ID => "42",
    :Name => "Je dois progresser",
    :Stage1 => "Aidez la dresseuse en détresse",
    :Location1 => "Montagne, Est",
    :StageLabel1 => "1",
    :QuestDescription => "Aidez la dresseuse en détresse",
  }

  QuestSally_en = {
    :ID => "43",
    :Name => "I Must Improve",
    :Stage1 => "Help the trainer in distress",
    :Location1 => "Mountain, East",
    :StageLabel1 => "1",
    :QuestDescription => "Help the trainer in distress",
  }

  # --- QUEST 22 ---
  QuestMountain = {
    :ID => "44",
    :Name => "(Quête principale) Allumer le feu",
    :Stage1 => "Trouvez 5 morceaux de bois.",
    :Stage2 => "Retournez voir Raya.",
    :Location1 => "Montagne Pyrenem",
    :Location2 => "Montagne Pyrenem, au coin du feu",
    :QuestDescription => "Trouvez 5 morceaux de bois pour raviver le feu.",
  }

  QuestMountain_en = {
    :ID => "45",
    :Name => "(Main Quest) Light My Fire",
    :Stage1 => "Find 5 pieces of wood.",
    :Stage2 => "Return to Raya.",
    :Location1 => "Pyrenem Mountain",
    :Location2 => "Pyrenem Mountain, by the fire",
    :QuestDescription => "Find 5 pieces of wood to rekindle the fire.",
  }
  
end
