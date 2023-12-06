import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_response_model.freezed.dart';
part 'auth_response_model.g.dart';

@Freezed(fromJson: true, toJson: false)
class AuthResponseModel with _$AuthResponseModel {
  const AuthResponseModel._();
  const factory AuthResponseModel({
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
    @JsonKey(name: 'token') String? token,
    @JsonKey(name: 'token_expires_in') int? tokenExpiresIn,
    @JsonKey(name: 'token_type') String? tokenType,
  }) = _AuthResponseModel;

  factory AuthResponseModel.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseModelFromJson(json);
}
