import 'package:flutter/material.dart';

class Statistik extends StatelessWidget {
  const Statistik({
    Key? key,
    required this.poinHome,
    required this.infoStatistik,
    required this.poinAway,
  });
  final String poinHome;
  final String poinAway;
  final String infoStatistik;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 50,
          child: Text(
            poinHome,
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          width: 100,
          child: Text(
            infoStatistik,
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          width: 50,
          child: Text(
            poinHome,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
