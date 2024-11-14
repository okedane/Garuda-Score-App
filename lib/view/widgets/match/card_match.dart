import 'package:flutter/material.dart';

var informasionTextStyle = const TextStyle(fontFamily: 'Indonesia');

class CardMatch extends StatelessWidget {
  const CardMatch({
    Key? key,
    required this.imagePath,
    required this.country,
  }) : super(key: key);

  final String imagePath;
  final String country;
  // final String score;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipOval(
          child: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          country,
          style: TextStyle(
            fontFamily: "Arimo Regular",
          ),
        )
      ],
    );
  }
}
