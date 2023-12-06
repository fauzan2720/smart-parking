const _baseImageUrl = 'https://fozan.shop';

enum BaseImageUrl {
  document('$_baseImageUrl/dokumen/'),
  vehicle('$_baseImageUrl/kendaraan/'),
  qrcode('$_baseImageUrl/qrcodes/'),
  ticket('$_baseImageUrl/tiket/');

  final String value;
  const BaseImageUrl(this.value);
}
