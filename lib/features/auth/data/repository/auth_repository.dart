import 'package:la_vie_app_orange_hackathone/core/web_services/api_result.dart';
import 'package:la_vie_app_orange_hackathone/core/web_services/network_exceptions.dart';
import 'package:la_vie_app_orange_hackathone/features/auth/data/models/auth_model.dart';

import '../../../../core/web_services/web_services.dart';

class AuthRepoistry {
  final WebServices webServices;

  AuthRepoistry(this.webServices);

//register
  Future<ApiResult<AuthModel>> registerNewUser(
      String firstName, String lastName, String email, String password) async {
    try {
      var response = await webServices.register(firstName,lastName,email, password);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(NetworkExceptions.getDioException(error));
    }
  }
  

//Login
  Future<ApiResult<AuthModel>> login(String email, String password) async {
    try {
      var response = await webServices.login(email, password);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(NetworkExceptions.getDioException(error));
    }
  }
}
