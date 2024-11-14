import 'package:flutter/material.dart';
import 'package:live_score/model/standing_model.dart';
import 'package:live_score/view/widgets/header/card_timnas.dart';

class StandingScreen extends StatelessWidget {
  const StandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const card_timnas(),
                const SizedBox(height: 10),
                Container(
                  width: double.infinity,
                  height: 300,
                  child: DataTable(
                    columnSpacing: 30,
                    columns: [
                      DataStanding("TEAMS"),
                      DataStanding("GP"),
                      DataStanding("W"),
                      DataStanding("D"),
                      DataStanding("L"),
                      DataStanding("P"),
                    ],
                    rows: List.generate(standingModelList.length, (index) {
                      final standing = standingModelList[index];
                      return DataRow(cells: [
                        DataCell(Text(standing.team)),
                        DataCell(Text(standing.gp)),
                        DataCell(Text(standing.w)),
                        DataCell(Text(standing.d)),
                        DataCell(Text(standing.l)),
                        DataCell(Text(standing.p))
                      ]);
                    }),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  DataColumn DataStanding(String columnLabel) {
    return DataColumn(
      label: Expanded(
        child: Text(
          columnLabel,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
