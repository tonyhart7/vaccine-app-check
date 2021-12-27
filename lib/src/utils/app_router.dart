part of 'app_utils.dart';

class AppRouter {
  static Route? routeGenerator(RouteSettings routeSettings) {
    return MaterialPageRoute<void>(
      settings: routeSettings,
      builder: (BuildContext context) {
        switch (routeSettings.name) {
          case SampleItemDetailsView.routeName:
            return const SampleItemDetailsView();
          case HomeView.routeName:
            return const HomeView();
          case RegistVaccinePage.routeName:
            return const RegistVaccinePage();
          case LoginView.routeName:
          default:
            return const LoginView();
        }
      },
    );
  }
}
