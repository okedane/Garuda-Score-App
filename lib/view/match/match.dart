import 'package:flutter/material.dart';
import 'package:live_score/model/match_model.dart';
import 'package:live_score/view/match/detail_match_screen.dart';
import 'package:live_score/view/widgets/header/card_timnas.dart';
import 'package:live_score/view/widgets/match/card_match.dart';

class MatchPage extends StatelessWidget {
  const MatchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const card_timnas(),
              const SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    final MatchModel dataMatch = matchModelList[index];
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailMatchScreen(
                              dataMatch: dataMatch,
                            ),
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          margin: const EdgeInsets.only(bottom: 8.0),
                          height: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    CardMatch(
                                      imagePath: dataMatch.flagHome,
                                      country: dataMatch.countryHome,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          dataMatch.competition,
                                          style: TextStyle(
                                              fontFamily: "Arimo Reguler"),
                                        ),
                                        Text(
                                          dataMatch.score,
                                          style: const TextStyle(
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "Arimo Bold",
                                          ),
                                        ),
                                        const SizedBox(height: 4),
                                        const Text(
                                          "Full Time",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            fontFamily: "Arimo Bold",
                                          ),
                                        ),
                                      ],
                                    ),
                                    CardMatch(
                                      imagePath: dataMatch.flagAway,
                                      country: dataMatch.countryAway,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: matchModelList.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
