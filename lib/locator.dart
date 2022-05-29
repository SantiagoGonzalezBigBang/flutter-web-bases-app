import 'package:get_it/get_it.dart';
import 'package:bases_web/ui/services/services.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigatorService());
}