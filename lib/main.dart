import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:football_app/cubits/fixtures_cubit.dart';
import 'package:football_app/models/fixtures_model.dart';
import 'package:football_app/services/dio_service.dart';
import 'package:football_app/views/splash_view.dart';
import 'package:intl/intl.dart';

import 'constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DioService.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FixturesCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: SplashView(),
      ),
    );
  }
}
