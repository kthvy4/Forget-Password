import 'package:get/get.dart';
import 'package:mobile/app/modules/home/views/login.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
    ),
  ];
}
