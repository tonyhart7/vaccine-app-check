part of 'app_utils.dart';

startHiveService() async {
  await Hive.initFlutter();
  Hive.registerAdapter<User>(UserAdapter());
  Hive.registerAdapter<RegistVaccine>(RegistVaccineAdapter());

  await Hive.openBox<User>(AppKey.localUser);
  await Hive.openBox<RegistVaccine>(AppKey.localData);
}
