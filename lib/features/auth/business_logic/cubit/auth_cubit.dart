import 'package:bloc/bloc.dart';
import 'package:la_vie_app_orange_hackathone/core/web_services/network_exceptions.dart';
import 'package:la_vie_app_orange_hackathone/features/auth/data/models/auth_model.dart';
import 'package:la_vie_app_orange_hackathone/features/auth/data/repository/auth_repository.dart';
import 'package:meta/meta.dart';

import 'auth_state.dart';

class AuthCubit extends Cubit<AuthResultState<AuthModel>> {
  final AuthRepoistry authRepoistry;

  AuthCubit(this.authRepoistry) : super(const Idle());

  void registerNewUser({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
  }) async {
    emit(const AuthResultState.loading());
    var result = await authRepoistry.registerNewUser(
        firstName, lastName, email, password);
    result.when(
      success: (AuthModel userData) {
        emit(AuthResultState.success(userData));
      },
      failure: (NetworkExceptions networkExceptions) {
        emit(AuthResultState.error(networkExceptions));
      },
    );
  }

  void login({
    required String email,
    required String password,
  }) async {
    emit(const AuthResultState.loading());
    var result = await authRepoistry.login(email, password);
    result.when(
      success: (AuthModel userData) {
        emit(AuthResultState.success(userData));
      },
      failure: (NetworkExceptions networkExceptions) {
        emit(AuthResultState.error(networkExceptions));
      },
    );
  }
}
