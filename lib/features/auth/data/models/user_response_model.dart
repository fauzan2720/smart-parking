import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/networking/models/base_image_url.dart';
import '../../domain/models/models.dart';

part 'user_response_model.freezed.dart';
part 'user_response_model.g.dart';

@Freezed(fromJson: true, toJson: false)
class UserResponseModel with _$UserResponseModel {
  const UserResponseModel._();
  const factory UserResponseModel({
    @JsonKey(name: 'nama_lengkap') String? namaLengkap,
    @JsonKey(name: 'no_telp') String? noTelp,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'nomor_identitas') int? nomorIdentitas,
    @JsonKey(name: 'foto_identitas') String? fotoIdentitas,
    @JsonKey(name: 'saldo') String? saldo,
    @JsonKey(name: 'pin') String? pin,
    @JsonKey(name: 'qr_code') String? qrCode,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'user_id') String? userId,
    @JsonKey(name: 'nama_kendaraan') String? namaKendaraan,
    @JsonKey(name: 'nomor_plat') String? nomorPlat,
    @JsonKey(name: 'foto_stnk') String? fotoStnk,
    @JsonKey(name: 'foto_kendaraan_tampak_depan')
    String? fotoKendaraanTampakDepan,
    @JsonKey(name: 'foto_kendaraan_tampak_belakang')
    String? fotoKendaraanTampakBelakang,
    @JsonKey(name: 'foto_kendaraan_dengan_pemilik')
    String? fotoKendaraanDenganPemilik,
    @JsonKey(name: 'image_qr') String? imageQr,
    @JsonKey(name: 'is_active') String? isActive,
  }) = _UserResponseModel;

  factory UserResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UserResponseModelFromJson(json);

  UserModel toDomain() => UserModel(
        namaLengkap: namaLengkap ?? '',
        noTelp: noTelp ?? '',
        email: email ?? '',
        nomorIdentitas: nomorIdentitas ?? 0,
        fotoIdentitas: '${BaseImageUrl.document.value}$fotoIdentitas',
        saldo: int.tryParse(saldo ?? '') ?? 0,
        pin: int.tryParse(pin ?? '') ?? 0,
        qrCode: '${BaseImageUrl.qrcode.value}$qrCode',
        createdAt: createdAt ?? '',
        updatedAt: updatedAt ?? '',
        id: int.tryParse(id ?? '') ?? 0,
        userId: int.tryParse(userId ?? '') ?? 0,
        namaKendaraan: namaKendaraan ?? '',
        nomorPlat: nomorPlat ?? '',
        fotoStnk: fotoStnk ?? '',
        fotoKendaraanTampakDepan:
            '${BaseImageUrl.document.value}$fotoKendaraanTampakDepan',
        fotoKendaraanTampakBelakang:
            '${BaseImageUrl.document.value}$fotoKendaraanTampakBelakang',
        fotoKendaraanDenganPemilik:
            '${BaseImageUrl.document.value}$fotoKendaraanDenganPemilik',
        imageQr: '${BaseImageUrl.vehicle.value}$imageQr',
        isActive: int.tryParse(isActive ?? '') ?? 0,
      );
}
