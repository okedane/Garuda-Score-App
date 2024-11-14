import 'package:flutter/material.dart';
import 'package:live_score/model/match_model.dart';
import 'package:live_score/view/widgets/match/statistik_match.dart';

class DetailMatchScreen extends StatelessWidget {
  final MatchModel dataMatch;
  const DetailMatchScreen({Key? key, required this.dataMatch})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(dataMatch.flagHome),
                              ),
                            ),
                          ),
                          Text(
                            dataMatch.countryHome,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Expanded(
                            child: Column(
                              children: List.generate(
                                  dataMatch.playerGoalHome.length, (index) {
                                return Text(
                                    '${dataMatch.playerGoalHome[index]} ${dataMatch.menitGoalHome[index]}');
                              }),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 125),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              dataMatch.score,
                              style: const TextStyle(
                                fontSize: 50,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 2),
                            const Text(
                              "Full Time",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(dataMatch.flagAway),
                              ),
                            ),
                          ),
                          Text(
                            dataMatch.countryAway,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Expanded(
                            child: Column(
                              children: List.generate(
                                  dataMatch.playerGoalAway.length, (index) {
                                return Text(
                                    '${dataMatch.playerGoalAway[index]} ${dataMatch.menitGoalAway[index]}');
                              }),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  child: const Text(
                    "Match Info",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              image: DecorationImage(
                                  image: AssetImage(
                                    dataMatch.logoCompetition,
                                  ),
                                  fit: BoxFit.cover),
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Competition",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                              Text(dataMatch.competition),
                            ],
                          ),
                        ],
                      ),
                      const Divider(
                        color: Colors.grey,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              image: const DecorationImage(
                                image: AssetImage("assets/images/referee.jpg"),
                                fit: BoxFit.cover,
                              ),
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Referee",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                              Text(dataMatch.referee),
                            ],
                          ),
                        ],
                      ),
                      const Divider(
                        color: Colors.grey,
                      ),
                      Row(
                        children: [
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.grey,
                                image: const DecorationImage(
                                  image:
                                      AssetImage("assets/images/stadium.jpg"),
                                  fit: BoxFit.cover,
                                )),
                          ),
                          const SizedBox(width: 10),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Stadium",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 17),
                              ),
                              Text(dataMatch.stadium),
                            ],
                          ),
                        ],
                      ),
                      const Divider(
                        color: Colors.grey,
                      ),
                      const Text(
                        "Statistics",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Statistik(
                        poinHome: dataMatch.shotOnGoalHome,
                        infoStatistik: "Shots on Goal",
                        poinAway: dataMatch.shotOnGoalAway,
                      ),
                      const Divider(color: Colors.grey),
                      Statistik(
                        poinHome: dataMatch.shotAttemptsHome,
                        infoStatistik: "Shot Attempts",
                        poinAway: dataMatch.shotAttemptsAway,
                      ),
                      const Divider(color: Colors.grey),
                      Statistik(
                        poinHome: dataMatch.foulsHome,
                        infoStatistik: "Fouls",
                        poinAway: dataMatch.foulsAway,
                      ),
                      const Divider(color: Colors.grey),
                      Statistik(
                        poinHome: dataMatch.yellowCarsdHome,
                        infoStatistik: "Yellow Cards",
                        poinAway: dataMatch.yellowCarsdHome,
                      ),
                      const Divider(color: Colors.grey),
                      Statistik(
                        poinHome: dataMatch.redCardsHome,
                        infoStatistik: "Red Cards",
                        poinAway: dataMatch.redCardsAway,
                      ),
                      const Divider(
                        color: Colors.grey,
                      ),
                      Statistik(
                        poinHome: dataMatch.cornertKickHome,
                        infoStatistik: "Corner Kicks",
                        poinAway: dataMatch.cornertKickAway,
                      ),
                      const Divider(
                        color: Colors.grey,
                      ),
                      Statistik(
                        poinHome: dataMatch.savesHome,
                        infoStatistik: "Saves",
                        poinAway: dataMatch.savesAway,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
