import 'package:flutter/material.dart';
import 'package:football_app/models/fixtures_model.dart';
import 'package:football_app/widgets/fixtures_item.dart';

class FixturesLeague extends StatefulWidget {
  const FixturesLeague({super.key, required this.response});

  final Response response;

  @override
  State<FixturesLeague> createState() => _FixturesLeagueState();
}

class _FixturesLeagueState extends State<FixturesLeague> {
  int? id;

  @override
  void initState() {
    id = widget.response.league!.id;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [


        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.grey.shade900
          ),
          child: Row(
            children: [
              Image.network(widget.response.league!.logo!, width: 40, height: 40,),
              SizedBox(width: 5,),
              Text(widget.response.league!.name!),
            ],
          ),
        ),
        SizedBox(height: 8,),
        FixturesItem(response: widget.response)
      ],
    );
  }
}