import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../const.dart';
import '../model/login_session.dart';

@injectable
class GetRemoteLoginSessionUseCase {
  final FirebaseFirestore _firestore;

  GetRemoteLoginSessionUseCase(this._firestore);

  Future<LoginSession?> call(String key) async {
    final json = await _firestore
        .collection(Const.loginSessions)
        .doc(key)
        .get()
        .then((e) => e.data());
    return json == null ? null : LoginSession.fromJson(json);
  }
}
