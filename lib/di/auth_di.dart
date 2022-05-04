import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'auth_di.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future configureAuthDependencies() async {
  await $initGetIt(getIt);
}
