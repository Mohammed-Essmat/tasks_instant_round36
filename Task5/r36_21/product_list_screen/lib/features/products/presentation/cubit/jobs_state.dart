part of 'jobs_cubit.dart';

abstract class JobsState {}

class JobsInitialState extends JobsState {}
final class JobsLoadingState extends JobsState {}

final class JobsProductsLoadedState extends JobsState {
  final List<Results> jobs;
  JobsProductsLoadedState({required this.jobs});
}

final class JobsFailureState extends JobsState {
  final String errorMessage;
  JobsFailureState({required this.errorMessage});
}