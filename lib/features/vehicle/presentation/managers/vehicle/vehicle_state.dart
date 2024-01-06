part of 'vehicle_bloc.dart';

@freezed
class VehicleState with _$VehicleState {
  const factory VehicleState.initial() = _Initial;
  const factory VehicleState.loading() = _Loading;
  const factory VehicleState.success({
    required List<VehicleModel> locations,
  }) = _Success;
  const factory VehicleState.error({
    required ApiFailureState state,
    required String message,
  }) = _Error;
}
