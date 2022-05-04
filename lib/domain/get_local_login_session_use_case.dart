import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:injectable/injectable.dart';

import '../model/login_session.dart';

@injectable
class GetLocalLoginSessionUseCase {
  GetLocalLoginSessionUseCase();

  Future<LoginSession> call() async {
    final deviceInfoPlugin = DeviceInfoPlugin();
    if (Platform.isAndroid) {
      final info = await deviceInfoPlugin.androidInfo;
      return LoginSession(specialId: info.fingerprint ?? info.androidId ?? '');
    } else {
      final info = await deviceInfoPlugin.iosInfo;
      return LoginSession(specialId: info.localizedModel ?? info.model ?? '');
    }
  }
}
