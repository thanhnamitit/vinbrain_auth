import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:injectable/injectable.dart';

import '../model/login_session.dart';

@injectable
class GetLocalLoginSessionUseCase {
  GetLocalLoginSessionUseCase();

  Future<LoginSession> call() async {
    final deviceInfoPlugin = DeviceInfoPlugin();
    LoginSession result;
    final now = DateTime.now();
    if (Platform.isAndroid) {
      final info = await deviceInfoPlugin.androidInfo;
      result = LoginSession(
        specialId: info.fingerprint ?? info.androidId ?? '',
        deviceName: info.model ?? '',
        dateTime: now,
      );
    } else {
      final info = await deviceInfoPlugin.iosInfo;
      result = LoginSession(
        specialId: info.localizedModel ?? info.model ?? '',
        deviceName: info.model ?? '',
        dateTime: now,
      );
    }
    return result;
  }
}
