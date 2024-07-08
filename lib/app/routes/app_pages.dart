import 'package:get/get.dart';
import '../bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

abstract class Routes {
  static const HOME = '/home';
}

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
