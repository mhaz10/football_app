import 'package:flutter/material.dart';
import 'package:football_app/models/fixtures_model.dart';
import 'package:football_app/widgets/fixtrues_league.dart';
import 'package:football_app/widgets/fixtrues_state.dart';
import 'package:football_app/widgets/fixtures_teams.dart';

class FixturesItem extends StatelessWidget {
  const FixturesItem({super.key, required this.response});

  final Response response;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.black,
                Colors.grey.shade800
              ])
      ),

      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: FixturesTeams(home: response.teams!.home!,),
              ),

              FixturesStatus(),

              Expanded(
                child: FixturesTeams(home: response.teams!.away!,),
              ),
            ],
          )
        ],
      ),
    );
  }
}