class StandingModel {
  String team;
  String gp;
  String w;
  String d;
  String l;
  String p;

  StandingModel({
    required this.team,
    required this.gp,
    required this.w,
    required this.d,
    required this.l,
    required this.p,
  });
}

var standingModelList = [
  StandingModel(team: "JPN", gp: "5", w: "4", d: "1", l: "0", p: "13"),
  StandingModel(team: "AUS", gp: "5", w: "1", d: "3", l: "1", p: "6"),
  StandingModel(team: "KSA", gp: "5", w: "1", d: "3", l: "1", p: "6"),
  StandingModel(team: "CHI", gp: "5", w: "2", d: "3", l: "3", p: "6"),
  StandingModel(team: "BHR", gp: "5", w: "1", d: "2", l: "2", p: "5"),
  StandingModel(team: "IDN", gp: "5", w: "0", d: "4", l: "2", p: "3"),
  
];
