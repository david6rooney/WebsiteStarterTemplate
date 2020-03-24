import 'package:get_it/get_it.dart';

// TODO - add imports

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
}

