part of 'explore_parking_bloc.dart';

@freezed
class ExploreParkingState with _$ExploreParkingState {
  const factory ExploreParkingState.initial() = _Initial;
  const factory ExploreParkingState.loading() = _Loading;
  const factory ExploreParkingState.success({
    required List<ExploreParkingModel> locations,
  }) = _Success;
  const factory ExploreParkingState.error({
    required ApiFailureState state,
    required String message,
  }) = _Error;
}
