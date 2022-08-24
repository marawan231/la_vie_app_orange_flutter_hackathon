import 'package:la_vie_app_orange_hackathone/core/resources/constants.dart';
import 'package:la_vie_app_orange_hackathone/core/web_services/api_result.dart';
import 'package:la_vie_app_orange_hackathone/core/web_services/network_exceptions.dart';
import 'package:la_vie_app_orange_hackathone/features/auth/data/models/auth_model.dart';
import 'package:la_vie_app_orange_hackathone/features/home/data/models/plants_model.dart';

import '../../../../core/web_services/web_services.dart';

class PlantsRepository {
  final WebServices webServices;

  PlantsRepository(this.webServices);

//fetch poducts
  Future<ApiResult<HomePlanetsModel>> fetchPlants(
     ) async {
    try {
      var response = await webServices.fetchPlanets('Bearer $token');
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(NetworkExceptions.getDioException(error));
    }
  }
  
}
