import 'package:flutter/material.dart';
import 'package:live_score/model/player_model.dart';
import 'package:live_score/view/widgets/header/card_timnas.dart';

class PlayerPage extends StatelessWidget {
  const PlayerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              card_timnas(),
              SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    final PlayerModel dataPlayer = playerModelList[index];
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(dataPlayer.position,
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                        ),
                        const SizedBox(height: 8.0),
                        ...dataPlayer.players.map((player) {
                          return Container(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            margin: const EdgeInsets.only(bottom: 8.0),
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.black),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(player.name),
                                Text(player.number.toString()),
                              ],
                            ),
                          );
                        })
                      ],
                    );
                  },
                  itemCount: playerModelList.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
