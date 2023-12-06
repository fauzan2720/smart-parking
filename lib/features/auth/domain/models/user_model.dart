import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';

@freezed
class UserModel with _$UserModel {
  const UserModel._();
  const factory UserModel({
    required String namaLengkap,
    required String noTelp,
    required String email,
    required int nomorIdentitas,
    required String fotoIdentitas,
    required int saldo,
    required int pin,
    required String qrCode,
    required String createdAt,
    required String updatedAt,
    required int id,
    required int userId,
    required String namaKendaraan,
    required String nomorPlat,
    required String fotoStnk,
    required String fotoKendaraanTampakDepan,
    required String fotoKendaraanTampakBelakang,
    required String fotoKendaraanDenganPemilik,
    required String imageQr,
    required int isActive,
  }) = _UserModel;
}
