import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@module
abstract class FirebaseModule {
  FirebaseFirestore get firestore => FirebaseFirestore.instance;
}
