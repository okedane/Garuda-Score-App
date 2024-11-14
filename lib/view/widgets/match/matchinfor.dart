import 'package:flutter/material.dart';

class MatchInfo extends StatelessWidget {
  const MatchInfo({
    Key? key,
    required this.judul,
    required this.subJudul,
  }) : super(key: key);

  final String judul;
  final String subJudul;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.grey,
          ),
        ),
        const SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              judul,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
            Text(subJudul),
          ],
        ),
      ],
    );
  }
}
