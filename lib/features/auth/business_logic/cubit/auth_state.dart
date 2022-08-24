
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/web_services/network_exceptions.dart';
part 'auth_state.freezed.dart';


@freezed
class AuthResultState<T> with _$AuthResultState<T> {
  const factory AuthResultState.idle() = Idle<T>;

  const factory AuthResultState.loading() = Loading<T>;

  const factory AuthResultState.success(T data) = Success<T>;


  const factory AuthResultState.error(NetworkExceptions networkExceptions) = Error<T>;



}


