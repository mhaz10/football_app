part of 'fixtures_cubit.dart';

@immutable
sealed class FixturesState {}

final class FixturesInitial extends FixturesState {}

final class FixturesChangeDate extends FixturesState {}
