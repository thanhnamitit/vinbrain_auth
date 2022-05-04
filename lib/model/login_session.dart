import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_session.freezed.dart';
part 'login_session.g.dart';

@freezed
class LoginSession with _$LoginSession {
  const LoginSession._();

  const factory LoginSession({
    required String specialId,
    required String deviceName,
    required DateTime dateTime,
  }) = _LoginSession;

  factory LoginSession.fromJson(Map<String, dynamic> json) =>
      _$LoginSessionFromJson(json);
}
