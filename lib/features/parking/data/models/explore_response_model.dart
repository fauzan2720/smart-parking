import 'package:freezed_annotation/freezed_annotation.dart';

import '../../parking.dart';

part 'explore_response_model.freezed.dart';
part 'explore_response_model.g.dart';

@Freezed(fromJson: true, toJson: false)
class ExploreResponseModel with _$ExploreResponseModel {
  const ExploreResponseModel._();
  const factory ExploreResponseModel({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'lokasi_parkir') String? lokasiParkir,
    @JsonKey(name: 'alamat') String? alamat,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'detail_lokasi') List<DetailLokasi>? detailLokasi,
  }) = _ExploreResponseModel;

  factory ExploreResponseModel.fromJson(Map<String, dynamic> json) =>
      _$ExploreResponseModelFromJson(json);

  /// status 0 = terisi
  /// status 1 = kosong
  ExploreParkingModel toDomain() => ExploreParkingModel(
        name: lokasiParkir ?? '-',
        address: alamat ?? '-',
        parkingAreas: (detailLokasi ?? [])
            .map((e) => ParkingArea(
                location: e.lokasiDetailParkir?.toUpperCase() ?? '',
                available: int.parse(e.status ?? '0') == 1 ? false : true))
            .toList(),
      );
}

@Freezed(fromJson: true, toJson: false)
class DetailLokasi with _$DetailLokasi {
  const DetailLokasi._();
  const factory DetailLokasi({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'parkir_id') String? parkirId,
    @JsonKey(name: 'lokasi_detail_parkir') String? lokasiDetailParkir,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'harga_tiket') String? hargaTiket,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _DetailLokasi;

  factory DetailLokasi.fromJson(Map<String, dynamic> json) =>
      _$DetailLokasiFromJson(json);
}
