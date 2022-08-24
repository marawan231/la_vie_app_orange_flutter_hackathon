
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../../core/web_services/network_exceptions.dart';
part 'plants_state.freezed.dart';


@freezed
class PlantsState<T> with _$PlantsState<T> {
  const factory PlantsState.idle() = Idle<T>;

  const factory PlantsState.loading() = Loading<T>;

  const factory PlantsState.success(T data) = Success<T>;


  const factory PlantsState.error(NetworkExceptions networkExceptions) = Error<T>;



}


