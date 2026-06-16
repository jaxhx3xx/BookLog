import 'package:get_it/get_it.dart';
import '../database/app_database.dart';

final getIt = GetIt.instance;

void setupLocator() {
  getIt.registerLazySingleton<LocalDatabase>(
        () => LocalDatabase(),
  );
}