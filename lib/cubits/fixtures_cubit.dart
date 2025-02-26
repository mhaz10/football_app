import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:football_app/constants.dart';
import 'package:football_app/models/fixtures_model.dart';
import 'package:football_app/services/dio_service.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'fixtures_state.dart';

class FixturesCubit extends Cubit<FixturesState> {
  FixturesCubit() : super(FixturesInitial());

  DateTime? dateTime = DateTime.now();

  Future<FixturesModel> fetchData () async {
    var response = await DioService.getData(url: kFixtures, query: {
        'date' : DateFormat('yyyy-MM-dd').format(dateTime!)
      });

    FixturesModel fixtures = FixturesModel.fromJson(response.data);

    print(response.data);


    return fixtures;
  }

  void getTime({required context}) {
    showDatePicker(
        context: context,
        firstDate: DateTime(2025),
        lastDate: DateTime(2030),
    ).then((value) {
      dateTime = value!;
      emit(FixturesChangeDate());
    },);
  }



}
