import 'package:get_it/get_it.dart';
import '/services/local_storage.dart';
import '/services/web_api.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerLazySingleton<WebApi>(() => FccApi());
  getIt.registerLazySingleton<LocalStorage>(() => SharedPrefsStorage());
}