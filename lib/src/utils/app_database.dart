part of 'app_utils.dart';

startHiveService() async {
  await Hive.initFlutter();
  Hive.registerAdapter<User>(UserAdapter());

  await Hive.openBox<User>(AppKey.localUser);
}
