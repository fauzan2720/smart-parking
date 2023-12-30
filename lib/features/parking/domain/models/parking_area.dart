import 'package:freezed_annotation/freezed_annotation.dart';

part 'parking_area.freezed.dart';

@freezed
class ParkingArea with _$ParkingArea {
  const ParkingArea._();

  const factory ParkingArea({
    required String location,
    required bool available,
  }) = _ParkingArea;
}
