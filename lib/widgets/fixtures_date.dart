import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:football_app/cubits/fixtures_cubit.dart';
import 'package:intl/intl.dart';

class FixturesDate extends StatelessWidget {
  const FixturesDate({super.key, required this.date});

  final DateTime date;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(DateFormat('EEEE, d MMM, yyyy').format(date)),
        Spacer(),
        IconButton(onPressed: () {
          BlocProvider.of<FixturesCubit>(context).getTime(context: context);
        }, icon: Icon(Icons.calendar_month))
      ],
    );
  }
}
