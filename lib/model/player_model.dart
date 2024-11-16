class Player {
  String name;
  int number;

  Player({
    required this.name,
    required this.number,
  });
}

class PlayerModel {
  String position;
  List<Player> players;

  PlayerModel({
    required this.position,
    required this.players,
  });
}

var playerModelList = [
  PlayerModel(position: "GoalKeppers", players: [
    Player(name: "Marten Paes", number: 1),
    Player(name: "Muhammad Riyadi", number: 21),
    Player(name: "Nadeo Argawinata", number: 16),
  ]),
  PlayerModel(position: "Outfield Players", players: [
    Player(name: "Jordi Amat", number: 4),
    Player(name: "Sandy Walsh", number: 6),
    Player(name: "Kevin Diks", number: 2),
    Player(name: "Calvin Verdonk", number: 17),
    Player(name: "Shayne Pattynama", number: 20),
    Player(name: "Jay Idzes", number: 3),
    Player(name: "Nathan Tjoe-A-On", number: 22),
    Player(name: "Rizky Ridho", number: 5),
    Player(name: "Pratama Arhan", number: 12),
    Player(name: "Justine Hubner", number: 23),
    Player(name: "Muhammad Ferari", number: 13),
    Player(name: "Thom Haye", number: 19),
    Player(name: "Witan Sulaeman", number: 8),
    Player(name: "Egy Maulana Vikri", number: 10),
    Player(name: "Eliano Raijnders", number: 23),
    Player(name: "Ricky Kambuaya", number: 4),
    Player(name: "Ivan Jenner", number: 17),
    Player(name: "Ragnar Oratmagoen", number: 11),
    Player(name: "Marselino Ferdinan", number: 7),
    Player(name: "Rafael Struick", number: 9),
    Player(name: "Hokky Carakan", number: 18),
  ]),
];
