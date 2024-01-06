import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/models/models.dart';

part 'vehicle_response_model.freezed.dart';
part 'vehicle_response_model.g.dart';

@Freezed(fromJson: true, toJson: false)
class VehicleResponseModel with _$VehicleResponseModel {
  const VehicleResponseModel._();
  const factory VehicleResponseModel({
    @JsonKey(name: 'id') @Default(0) required int id,
    @JsonKey(name: 'user_id') @Default('') required String userId,
    @JsonKey(name: 'nama_kendaraan') @Default('') required String namaKendaraan,
    @JsonKey(name: 'nomor_plat') @Default('') required String nomorPlat,
    @JsonKey(name: 'foto_stnk') @Default('') required String fotoStnk,
    @JsonKey(name: 'foto_kendaraan_tampak_depan')
    @Default('')
    required String fotoKendaraanTampakDepan,
    @JsonKey(name: 'foto_kendaraan_tampak_belakang')
    @Default('')
    required String fotoKendaraanTampakBelakang,
    @JsonKey(name: 'foto_kendaraan_dengan_pemilik')
    @Default('')
    required String fotoKendaraanDenganPemilik,
    @JsonKey(name: 'image_qr') @Default('') required String imageQr,
    @JsonKey(name: 'is_active') @Default('') required String isActive,
    @JsonKey(name: 'created_at') @Default('') required String createdAt,
    @JsonKey(name: 'updated_at') @Default('') required String updatedAt,
  }) = _VehicleResponseModel;

  VehicleModel toDomain() => VehicleModel(
        id: id.toString(),
        name: namaKendaraan,
        plate: nomorPlat,
        stnkImage: fotoStnk,
        frontVehicleImage: fotoKendaraanTampakDepan,
        backVehicleImage: fotoKendaraanTampakBelakang,
        userWithVehicleImage: fotoKendaraanDenganPemilik,
      );

  factory VehicleResponseModel.fromJson(Map<String, dynamic> json) =>
      _$VehicleResponseModelFromJson(json);
}
