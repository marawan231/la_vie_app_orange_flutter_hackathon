import 'package:bloc/bloc.dart';

import 'package:la_vie_app_orange_hackathone/features/home/business_logic/cubit/plants_state.dart';
import 'package:la_vie_app_orange_hackathone/features/home/data/models/plants_model.dart';
import 'package:la_vie_app_orange_hackathone/features/home/data/repository/plants_repository.dart';
import 'package:meta/meta.dart';

import '../../../../core/web_services/network_exceptions.dart';

class PlantsCubit extends Cubit<PlantsState<HomePlanetsModel>> {
  final PlantsRepository plantsRepository;

  PlantsCubit(this.plantsRepository) : super(const Loading());

  void getAllPlanets() async {
    var result = await plantsRepository.fetchPlants();
    result.when(
      success: (HomePlanetsModel planetsData) {
        emit(PlantsState.success(planetsData));
      },
      failure: (NetworkExceptions networkExceptions) {
        emit(PlantsState.error(networkExceptions));
      },
    );
  }

  // void login({
  //   required String email,
  //   required String password,
  // }) async {
  //   emit(const AuthResultState.loading());
  //   var result = await authRepoistry.login(email, password);
  //   result.when(
  //     success: (AuthModel userData) {
  //       emit(AuthResultState.success(userData));
  //     },
  //     failure: (NetworkExceptions networkExceptions) {
  //       emit(AuthResultState.error(networkExceptions));
  //     },
  //   );
  // }
}
