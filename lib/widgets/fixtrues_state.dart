import 'package:flutter/material.dart';

class FixturesStatus extends StatelessWidget {
  const FixturesStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text('2', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        Padding(
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
            child: Text('10:30 PM', style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
          ),
        ),
        Text('1', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
      ],
    );
  }
}