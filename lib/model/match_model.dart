class MatchModel {
  String countryHome;
  String flagHome;
  List<String> playerGoalHome;
  List<String> menitGoalHome;
  String countryAway;
  String flagAway;
  List<String> playerGoalAway;
  List<String> menitGoalAway;
  String score;
  String competition;
  String logoCompetition;
  String referee;
  String stadium;
  String shotOnGoalHome;
  String shotAttemptsHome;
  String foulsHome;
  String yellowCarsdHome;
  String redCardsHome;
  String cornertKickHome;
  String savesHome;
  String shotOnGoalAway;
  String shotAttemptsAway;
  String foulsAway;
  String yellowCarsdAway;
  String redCardsAway;
  String cornertKickAway;
  String savesAway;

  MatchModel({
    required this.countryHome,
    required this.flagHome,
    required this.playerGoalHome,
    required this.menitGoalHome,
    required this.countryAway,
    required this.flagAway,
    required this.playerGoalAway,
    required this.menitGoalAway,
    required this.score,
    required this.competition,
    required this.logoCompetition,
    required this.referee,
    required this.stadium,
    required this.shotAttemptsHome,
    required this.shotAttemptsAway,
    required this.shotOnGoalHome,
    required this.shotOnGoalAway,
    required this.foulsHome,
    required this.foulsAway,
    required this.yellowCarsdHome,
    required this.yellowCarsdAway,
    required this.redCardsHome,
    required this.redCardsAway,
    required this.cornertKickAway,
    required this.cornertKickHome,
    required this.savesHome,
    required this.savesAway,
  });
}

var matchModelList = [
  MatchModel(
    countryHome: "China",
    flagHome: 'assets/images/flag/Cina.png',
    playerGoalHome: ['B. Abduweli', 'Y.Zhang'],
    menitGoalHome: ["21'", "44'"],
    shotOnGoalHome: "3",
    shotAttemptsHome: "5",
    foulsHome: "11",
    yellowCarsdHome: "1",
    redCardsHome: "0",
    cornertKickHome: "1",
    savesHome: "5",
    // --------------------------
    countryAway: "Indonesia",
    flagAway: 'assets/images/flag/Indonesia.png',
    playerGoalAway: ['T Haye'],
    menitGoalAway: ["86'"],
    score: "2 - 1",
    shotOnGoalAway: "6",
    shotAttemptsAway: "14",
    foulsAway: "8",
    yellowCarsdAway: "2",
    redCardsAway: "0",
    cornertKickAway: "6",
    savesAway: "1",
    // -------------------------
    competition: "Qualifiers Word Cup",
    logoCompetition: "assets/images/competition/Qualifiers_WC.png",
    referee: "Omar Al Ali",
    stadium: "Qingdao Youth Football Stadium",
  ),
  MatchModel(
    countryHome: "Bahrain",
    flagHome: 'assets/images/flag/Bahrain.png',
    playerGoalHome: ['M Marhoon', 'M Marhoon'],
    menitGoalHome: ["15'", "90'+9'"],
    shotOnGoalHome: "5",
    shotAttemptsHome: "24",
    foulsHome: "10",
    yellowCarsdHome: "2",
    redCardsHome: "0",
    cornertKickHome: "7",
    savesHome: "3",
    // ---------------------------
    countryAway: "Indonesia",
    flagAway: 'assets/images/flag/Indonesia.png',
    playerGoalAway: ['R. Oratmangon', 'R. Struck'],
    menitGoalAway: ["45'", "74'"],
    shotOnGoalAway: "5",
    shotAttemptsAway: "5",
    foulsAway: "27",
    yellowCarsdAway: "3",
    redCardsAway: "0",
    cornertKickAway: "1",
    savesAway: "4",
    // ---------------------------
    score: "2 - 2",
    competition: "Qualifiers Word Cup",
    logoCompetition: "assets/images/competition/Qualifiers_WC.png",
    referee: "Ahmed Abu Bakar Said Al Kaf",
    stadium: "Bahrain National Stadium",
  ),
  MatchModel(
    countryHome: "Indonesia",
    flagHome: 'assets/images/flag/Indonesia.png',
    playerGoalHome: [''],
    menitGoalHome: [""],
    shotOnGoalHome: "2",
    shotAttemptsHome: "5",
    foulsHome: "12",
    yellowCarsdHome: "1",
    redCardsHome: "0",
    cornertKickHome: "3",
    savesHome: "5",
    // ---------------------
    score: "0 - 0",
    countryAway: "Australia",
    flagAway: 'assets/images/flag/Australia.png',
    playerGoalAway: [''],
    menitGoalAway: [""],
    shotOnGoalAway: "5",
    shotAttemptsAway: "19",
    foulsAway: "7",
    yellowCarsdAway: "3",
    redCardsAway: "0",
    cornertKickAway: "15",
    savesAway: "2",
    // -----------------------
    competition: "Qualifiers Word Cup",
    logoCompetition: "assets/images/competition/Qualifiers_WC.png",
    referee: "Salman Ahmad Flahi",
    stadium: "Gelora Bung Karno Stadium",
  ),
  MatchModel(
    countryHome: "Arab Saudi",
    flagHome: 'assets/images/flag/Arab.png',
    playerGoalHome: ['Musab Al'],
    menitGoalHome: ["45'+3'"],
    shotOnGoalHome: "4",
    shotAttemptsHome: "18",
    foulsHome: "6",
    yellowCarsdHome: "2",
    redCardsHome: "0",
    cornertKickHome: "6",
    savesHome: "1",
    // -----------------------
    competition: "Qualifiers Word Cup",
    logoCompetition: "assets/images/competition/Qualifiers_WC.png",
    referee: "Adham Mohammad",
    stadium: "King Abdullah Sports City, Jeddah",
    // ----------------------
    countryAway: "Indonesia",
    flagAway: 'assets/images/flag/Indonesia.png',
    playerGoalAway: ['S Walsh'],
    menitGoalAway: ["19'"],
    shotOnGoalAway: "2",
    shotAttemptsAway: "8",
    foulsAway: "15",
    yellowCarsdAway: "3",
    redCardsAway: "0",
    cornertKickAway: "1",
    savesAway: "3",
    score: "1 - 1",
  ),
];
