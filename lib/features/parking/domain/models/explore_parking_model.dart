import 'package:freezed_annotation/freezed_annotation.dart';

import 'parking_area.dart';

part 'explore_parking_model.freezed.dart';

@freezed
class ExploreParkingModel with _$ExploreParkingModel {
  const ExploreParkingModel._();
  const factory ExploreParkingModel({
    required String name,
    required String address,
    required List<ParkingArea> parkingAreas,
  }) = _ExploreParkingModel;
}
