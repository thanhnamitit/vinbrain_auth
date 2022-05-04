// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginSession _$LoginSessionFromJson(Map<String, dynamic> json) {
  return _LoginSession.fromJson(json);
}

/// @nodoc
class _$LoginSessionTearOff {
  const _$LoginSessionTearOff();

  _LoginSession call(
      {required String specialId,
      required String deviceName,
      required DateTime dateTime}) {
    return _LoginSession(
      specialId: specialId,
      deviceName: deviceName,
      dateTime: dateTime,
    );
  }

  LoginSession fromJson(Map<String, Object> json) {
    return LoginSession.fromJson(json);
  }
}

/// @nodoc
const $LoginSession = _$LoginSessionTearOff();

/// @nodoc
mixin _$LoginSession {
  String get specialId => throw _privateConstructorUsedError;
  String get deviceName => throw _privateConstructorUsedError;
  DateTime get dateTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginSessionCopyWith<LoginSession> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginSessionCopyWith<$Res> {
  factory $LoginSessionCopyWith(
          LoginSession value, $Res Function(LoginSession) then) =
      _$LoginSessionCopyWithImpl<$Res>;
  $Res call({String specialId, String deviceName, DateTime dateTime});
}

/// @nodoc
class _$LoginSessionCopyWithImpl<$Res> implements $LoginSessionCopyWith<$Res> {
  _$LoginSessionCopyWithImpl(this._value, this._then);

  final LoginSession _value;
  // ignore: unused_field
  final $Res Function(LoginSession) _then;

  @override
  $Res call({
    Object? specialId = freezed,
    Object? deviceName = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(_value.copyWith(
      specialId: specialId == freezed
          ? _value.specialId
          : specialId // ignore: cast_nullable_to_non_nullable
              as String,
      deviceName: deviceName == freezed
          ? _value.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$LoginSessionCopyWith<$Res>
    implements $LoginSessionCopyWith<$Res> {
  factory _$LoginSessionCopyWith(
          _LoginSession value, $Res Function(_LoginSession) then) =
      __$LoginSessionCopyWithImpl<$Res>;
  @override
  $Res call({String specialId, String deviceName, DateTime dateTime});
}

/// @nodoc
class __$LoginSessionCopyWithImpl<$Res> extends _$LoginSessionCopyWithImpl<$Res>
    implements _$LoginSessionCopyWith<$Res> {
  __$LoginSessionCopyWithImpl(
      _LoginSession _value, $Res Function(_LoginSession) _then)
      : super(_value, (v) => _then(v as _LoginSession));

  @override
  _LoginSession get _value => super._value as _LoginSession;

  @override
  $Res call({
    Object? specialId = freezed,
    Object? deviceName = freezed,
    Object? dateTime = freezed,
  }) {
    return _then(_LoginSession(
      specialId: specialId == freezed
          ? _value.specialId
          : specialId // ignore: cast_nullable_to_non_nullable
              as String,
      deviceName: deviceName == freezed
          ? _value.deviceName
          : deviceName // ignore: cast_nullable_to_non_nullable
              as String,
      dateTime: dateTime == freezed
          ? _value.dateTime
          : dateTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginSession extends _LoginSession {
  const _$_LoginSession(
      {required this.specialId,
      required this.deviceName,
      required this.dateTime})
      : super._();

  factory _$_LoginSession.fromJson(Map<String, dynamic> json) =>
      _$$_LoginSessionFromJson(json);

  @override
  final String specialId;
  @override
  final String deviceName;
  @override
  final DateTime dateTime;

  @override
  String toString() {
    return 'LoginSession(specialId: $specialId, deviceName: $deviceName, dateTime: $dateTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginSession &&
            (identical(other.specialId, specialId) ||
                const DeepCollectionEquality()
                    .equals(other.specialId, specialId)) &&
            (identical(other.deviceName, deviceName) ||
                const DeepCollectionEquality()
                    .equals(other.deviceName, deviceName)) &&
            (identical(other.dateTime, dateTime) ||
                const DeepCollectionEquality()
                    .equals(other.dateTime, dateTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(specialId) ^
      const DeepCollectionEquality().hash(deviceName) ^
      const DeepCollectionEquality().hash(dateTime);

  @JsonKey(ignore: true)
  @override
  _$LoginSessionCopyWith<_LoginSession> get copyWith =>
      __$LoginSessionCopyWithImpl<_LoginSession>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginSessionToJson(this);
  }
}

abstract class _LoginSession extends LoginSession {
  const factory _LoginSession(
      {required String specialId,
      required String deviceName,
      required DateTime dateTime}) = _$_LoginSession;
  const _LoginSession._() : super._();

  factory _LoginSession.fromJson(Map<String, dynamic> json) =
      _$_LoginSession.fromJson;

  @override
  String get specialId => throw _privateConstructorUsedError;
  @override
  String get deviceName => throw _privateConstructorUsedError;
  @override
  DateTime get dateTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LoginSessionCopyWith<_LoginSession> get copyWith =>
      throw _privateConstructorUsedError;
}
