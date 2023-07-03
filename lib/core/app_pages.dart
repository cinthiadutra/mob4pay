// ignore_for_file: non_constant_identifier_names


import 'package:get/get.dart';
import 'package:mob4pay/core/app_routes.dart';
import 'package:mob4pay/views/home_page.dart';

List<GetPage> AppPages = [
  GetPage(
      name: AppRoutes.home, page: () => const HomePage(),),

];

class AppPage {
  static final routes = <GetPage<dynamic>>[
    ...AppPages,
  ];
}
