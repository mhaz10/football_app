import 'package:flutter/material.dart';
import 'package:football_app/models/fixtures_model.dart';
import 'package:intl/intl.dart';

class FixturesStatus extends StatelessWidget {
  const FixturesStatus({super.key, required this.response});

  final Response response;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        if(response.fixture!.status!.short! == 'TBD')
          FixturesStatusTime(dateTime: response.fixture!.date!,),


        if (response.fixture!.status!.short! == 'FT')
          FixturesStatusResult(goals: response.goals!,),

      ],
    );
  }
}

class FixturesStatusTime extends StatelessWidget {
  const FixturesStatusTime({super.key, required this.dateTime});

  final DateTime dateTime;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black,
                  Colors.grey.shade600
                ])
        ),
        child: Text(DateFormat.HOUR24_MINUTE, style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
      ),
    );
  }
}

class FixturesStatusResult extends StatelessWidget {
  const FixturesStatusResult({super.key, required this.goals});

  final Goals goals;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black,
                  Colors.grey.shade600
                ])
        ),
        child: Text('${goals.home} - ${goals.away} ', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),));
  }
}

