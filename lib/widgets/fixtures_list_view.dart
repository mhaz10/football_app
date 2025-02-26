import 'package:flutter/material.dart';
import 'package:football_app/models/fixtures_model.dart';
import 'package:football_app/widgets/fixtrues_league.dart';
import 'package:football_app/widgets/fixtures_item.dart';

class FixturesListView extends StatelessWidget {
  const FixturesListView({super.key, required this.fixtures});

  final List<Response> fixtures;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) => FixturesLeague(response: fixtures[index]),
        separatorBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Divider(),
        ),
        itemCount: fixtures.length
    );
  }
}