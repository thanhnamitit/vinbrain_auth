// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../domain/get_local_login_session_use_case.dart' as _i4;
import '../domain/get_remote_login_session_use_case.dart' as _i5;
import '../domain/listen_to_login_session_use_case.dart' as _i6;
import '../domain/update_login_session_use_case.dart' as _i7;
import 'module/firebase_module.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseModule = _$FirebaseModule();
  gh.factory<_i3.FirebaseFirestore>(() => firebaseModule.firestore);
  gh.factory<_i4.GetLocalLoginSessionUseCase>(
      () => _i4.GetLocalLoginSessionUseCase());
  gh.factory<_i5.GetRemoteLoginSessionUseCase>(
      () => _i5.GetRemoteLoginSessionUseCase(get<_i3.FirebaseFirestore>()));
  gh.factory<_i6.ListenToLoginSessionUseCase>(
      () => _i6.ListenToLoginSessionUseCase(get<_i3.FirebaseFirestore>()));
  gh.factory<_i7.UpdateLoginSessionUseCase>(
      () => _i7.UpdateLoginSessionUseCase(get<_i3.FirebaseFirestore>()));
  return get;
}

class _$FirebaseModule extends _i8.FirebaseModule {}
