import 'package:flutter/material.dart';
import 'package:football_app/models/fixtures_model.dart';
import 'package:football_app/widgets/fixtures_item.dart';

class FixturesLeague extends StatelessWidget {
  const FixturesLeague({super.key, required this.league});

  final League league;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.network(league.logo!, width: 40, height: 40,),
            SizedBox(width: 5,),
            Text(league.name!),
          ],
        ),
      ],
    );
  }
}