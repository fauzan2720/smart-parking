// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_base_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ApiBaseResponse<T> _$ApiBaseResponseFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _ApiBaseResponse<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$ApiBaseResponse<T> {
  @JsonKey(name: "meta")
  Meta get meta => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  T? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApiBaseResponseCopyWith<T, ApiBaseResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiBaseResponseCopyWith<T, $Res> {
  factory $ApiBaseResponseCopyWith(
          ApiBaseResponse<T> value, $Res Function(ApiBaseResponse<T>) then) =
      _$ApiBaseResponseCopyWithImpl<T, $Res, ApiBaseResponse<T>>;
  @useResult
  $Res call({@JsonKey(name: "meta") Meta meta, @JsonKey(name: "data") T? data});

  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class _$ApiBaseResponseCopyWithImpl<T, $Res, $Val extends ApiBaseResponse<T>>
    implements $ApiBaseResponseCopyWith<T, $Res> {
  _$ApiBaseResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaCopyWith<$Res> get meta {
    return $MetaCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ApiBaseResponseImplCopyWith<T, $Res>
    implements $ApiBaseResponseCopyWith<T, $Res> {
  factory _$$ApiBaseResponseImplCopyWith(_$ApiBaseResponseImpl<T> value,
          $Res Function(_$ApiBaseResponseImpl<T>) then) =
      __$$ApiBaseResponseImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "meta") Meta meta, @JsonKey(name: "data") T? data});

  @override
  $MetaCopyWith<$Res> get meta;
}

/// @nodoc
class __$$ApiBaseResponseImplCopyWithImpl<T, $Res>
    extends _$ApiBaseResponseCopyWithImpl<T, $Res, _$ApiBaseResponseImpl<T>>
    implements _$$ApiBaseResponseImplCopyWith<T, $Res> {
  __$$ApiBaseResponseImplCopyWithImpl(_$ApiBaseResponseImpl<T> _value,
      $Res Function(_$ApiBaseResponseImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = null,
    Object? data = freezed,
  }) {
    return _then(_$ApiBaseResponseImpl<T>(
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$ApiBaseResponseImpl<T> extends _ApiBaseResponse<T> {
  const _$ApiBaseResponseImpl(
      {@JsonKey(name: "meta") this.meta = const Meta(),
      @JsonKey(name: "data") this.data})
      : super._();

  factory _$ApiBaseResponseImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$ApiBaseResponseImplFromJson(json, fromJsonT);

  @override
  @JsonKey(name: "meta")
  final Meta meta;
  @override
  @JsonKey(name: "data")
  final T? data;

  @override
  String toString() {
    return 'ApiBaseResponse<$T>(meta: $meta, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiBaseResponseImpl<T> &&
            (identical(other.meta, meta) || other.meta == meta) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, meta, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiBaseResponseImplCopyWith<T, _$ApiBaseResponseImpl<T>> get copyWith =>
      __$$ApiBaseResponseImplCopyWithImpl<T, _$ApiBaseResponseImpl<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$ApiBaseResponseImplToJson<T>(this, toJsonT);
  }
}

abstract class _ApiBaseResponse<T> extends ApiBaseResponse<T> {
  const factory _ApiBaseResponse(
      {@JsonKey(name: "meta") final Meta meta,
      @JsonKey(name: "data") final T? data}) = _$ApiBaseResponseImpl<T>;
  const _ApiBaseResponse._() : super._();

  factory _ApiBaseResponse.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$ApiBaseResponseImpl<T>.fromJson;

  @override
  @JsonKey(name: "meta")
  Meta get meta;
  @override
  @JsonKey(name: "data")
  T? get data;
  @override
  @JsonKey(ignore: true)
  _$$ApiBaseResponseImplCopyWith<T, _$ApiBaseResponseImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

Meta _$MetaFromJson(
  Map<String, dynamic> json,
) {
  return _Meta.fromJson(
    json,
  );
}

/// @nodoc
mixin _$Meta {
  @JsonKey(name: "code")
  int get code => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaCopyWith<Meta> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaCopyWith<$Res> {
  factory $MetaCopyWith(Meta value, $Res Function(Meta) then) =
      _$MetaCopyWithImpl<$Res, Meta>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") int code,
      @JsonKey(name: "status") String status,
      @JsonKey(name: "message") String message});
}

/// @nodoc
class _$MetaCopyWithImpl<$Res, $Val extends Meta>
    implements $MetaCopyWith<$Res> {
  _$MetaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? status = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetaImplCopyWith<$Res> implements $MetaCopyWith<$Res> {
  factory _$$MetaImplCopyWith(
          _$MetaImpl value, $Res Function(_$MetaImpl) then) =
      __$$MetaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "code") int code,
      @JsonKey(name: "status") String status,
      @JsonKey(name: "message") String message});
}

/// @nodoc
class __$$MetaImplCopyWithImpl<$Res>
    extends _$MetaCopyWithImpl<$Res, _$MetaImpl>
    implements _$$MetaImplCopyWith<$Res> {
  __$$MetaImplCopyWithImpl(_$MetaImpl _value, $Res Function(_$MetaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? status = null,
    Object? message = null,
  }) {
    return _then(_$MetaImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetaImpl extends _Meta {
  const _$MetaImpl(
      {@JsonKey(name: "code") this.code = 0,
      @JsonKey(name: "status") this.status = '',
      @JsonKey(name: "message") this.message = ''})
      : super._();

  factory _$MetaImpl.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$$MetaImplFromJson(
        json,
      );

  @override
  @JsonKey(name: "code")
  final int code;
  @override
  @JsonKey(name: "status")
  final String status;
  @override
  @JsonKey(name: "message")
  final String message;

  @override
  String toString() {
    return 'Meta(code: $code, status: $status, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, status, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaImplCopyWith<_$MetaImpl> get copyWith =>
      __$$MetaImplCopyWithImpl<_$MetaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetaImplToJson(
      this,
    );
  }
}

abstract class _Meta extends Meta {
  const factory _Meta(
      {@JsonKey(name: "code") final int code,
      @JsonKey(name: "status") final String status,
      @JsonKey(name: "message") final String message}) = _$MetaImpl;
  const _Meta._() : super._();

  factory _Meta.fromJson(
    Map<String, dynamic> json,
  ) = _$MetaImpl.fromJson;

  @override
  @JsonKey(name: "code")
  int get code;
  @override
  @JsonKey(name: "status")
  String get status;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$MetaImplCopyWith<_$MetaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
