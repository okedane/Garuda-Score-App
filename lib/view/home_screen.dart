import 'package:flutter/material.dart';
import 'package:live_score/view/match/match.dart';
import 'package:live_score/view/squad/player.dart';
import 'package:live_score/view/standing/standing_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int myCurrentIndex = 0;

  List<Widget> pages = const [
    MatchPage(),
    StandingScreen(),
    PlayerPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IndexedStack(
        index: myCurrentIndex,
        children: pages,
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        child: BottomNavigationBar(
          selectedItemColor: Colors.red[900],
          currentIndex: myCurrentIndex,
          onTap: (value) {
            setState(() {
              myCurrentIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.sports_soccer_sharp),
              label: "Match",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.leaderboard),
              label: "Standing",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.supervised_user_circle_sharp),
              label: "Squad",
            ),
          ],
        ),
      ),
    );
  }
}
