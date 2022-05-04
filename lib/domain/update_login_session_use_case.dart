import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../const.dart';
import '../model/login_session.dart';

@injectable
class UpdateLoginSessionUseCase {
  final FirebaseFirestore _firestore;

  UpdateLoginSessionUseCase(this._firestore);

  Future call(String key, LoginSession session) async {
    await _firestore
        .collection(Const.loginSessions)
        .doc(key)
        .set(session.toJson());
  }
}
