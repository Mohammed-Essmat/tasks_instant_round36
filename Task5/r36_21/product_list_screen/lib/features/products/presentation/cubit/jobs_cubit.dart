import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:product_list_screen/features/products/data/job_model.dart';
part 'jobs_state.dart';

  class JobsCubit extends Cubit<JobsState> {
  // Failure => error message
  // Loaded => but List is empty => size = 0
  // Loaded => size = 6

  JobsCubit() : super(JobsInitialState());
  Future<void> getProducts() async {
    emit(JobsLoadingState());

    final dio = Dio();
    final response = await dio.get('https://arbeitnow.com/api/job-board-api');
   
    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = response.data;
      final List<dynamic> jsonJobs = responseData['data'];
      final List<Results> jobs = jsonJobs.map((json) => Results.fromJson(json)).toList();

      emit(JobsProductsLoadedState(jobs: jobs));

    }else{
      emit(JobsFailureState(errorMessage: 'Loading failed!'));
    }
  }
}
