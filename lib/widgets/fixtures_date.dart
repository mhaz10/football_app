import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FixturesDate extends StatelessWidget {
  const FixturesDate({super.key, required this.date});

  final DateTime date;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(DateFormat('EEEE, d MMM, yyyy').format(date)),
      ],
    );
  }
}
