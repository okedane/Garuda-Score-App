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
  StandingModel(team: "JPN", gp: "4", w: "3", d: "1", l: "0", p: "10"),
  StandingModel(team: "AUS", gp: "4", w: "1", d: "2", l: "1", p: "5"),
  StandingModel(team: "KSA", gp: "4", w: "1", d: "2", l: "1", p: "5"),
  StandingModel(team: "BHR", gp: "4", w: "1", d: "1", l: "1", p: "3"),
  StandingModel(team: "IDN", gp: "4", w: "0", d: "4", l: "5", p: "3"),
  StandingModel(team: "CHI", gp: "4", w: "1", d: "0", l: "3", p: "3")
];
