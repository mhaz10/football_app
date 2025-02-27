import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:football_app/cubits/fixtures_cubit.dart';
import 'package:football_app/models/fixtures_model.dart';
import 'package:football_app/widgets/fixtures_date.dart';
import 'package:football_app/widgets/fixtures_list_view.dart';
import 'package:intl/intl.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FixturesCubit, FixturesState>(
      listener: (context, state) {},
      builder: (context, state) {
        return FutureBuilder(
          future: BlocProvider.of<FixturesCubit>(context).fetchData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Scaffold(
                body: SafeArea(
                  child: Center(
                      child: LoadingAnimationWidget.horizontalRotatingDots(
                          color: Colors.grey, size: 30)),
                ),
              );
            }

            return Scaffold(
              appBar: AppBar(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 24,
                      backgroundImage: AssetImage('assets/images/football.png'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('FootBall App')
                  ],
                ),
              ),
              body: Padding(
                padding: const EdgeInsets.only(
                    right: 14, left: 14, top: 8, bottom: 8),
                child: Column(
                  children: [
                    FixturesDate(
                      date: snapshot.data!.parameters!.date!,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Expanded(
                        child: FixturesListView(
                      fixtures: snapshot.data!.response,
                    )),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
