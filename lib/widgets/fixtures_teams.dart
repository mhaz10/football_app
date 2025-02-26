import 'package:flutter/material.dart';
import 'package:football_app/models/fixtures_model.dart';

class FixturesTeams extends StatelessWidget {
  const FixturesTeams({super.key, required this.home});

  final Home home;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(home.logo!, width: 50, height: 50,),
        SizedBox(height: 5,),
        Text(home.name!, textAlign: TextAlign.center,)
      ],
    );
  }
}