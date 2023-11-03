import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_base_response.freezed.dart';
part 'api_base_response.g.dart';

@Freezed(fromJson: true, toJson: true, genericArgumentFactories: true)
class ApiBaseResponse<T> with _$ApiBaseResponse<T> {
  const ApiBaseResponse._();
  const factory ApiBaseResponse({
    @JsonKey(name: "meta") @Default(Meta()) Meta meta,
    @JsonKey(name: "data") T? data,
  }) = _ApiBaseResponse;

  factory ApiBaseResponse.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$ApiBaseResponseFromJson(json, fromJsonT);
}

@Freezed(fromJson: true, toJson: true, genericArgumentFactories: true)
class Meta with _$Meta {
  const Meta._();
  const factory Meta({
    @JsonKey(name: "code") @Default(0) int code,
    @JsonKey(name: "status") @Default('') String status,
    @JsonKey(name: "message") @Default('') String message,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}
