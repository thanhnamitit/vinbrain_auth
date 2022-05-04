import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

import '../model/login_session.dart';

@injectable
class ListenToLoginSessionUseCase {
  final FirebaseFirestore _firestore;

  ListenToLoginSessionUseCase(this._firestore);

  Stream<LoginSession> call() async* {}
}
