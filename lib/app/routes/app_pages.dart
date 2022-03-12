import 'package:get/get.dart';

import 'package:getx_covid/app/modules/About/bindings/about_binding.dart';
import 'package:getx_covid/app/modules/About/views/about_view.dart';
import 'package:getx_covid/app/modules/home/bindings/home_binding.dart';
import 'package:getx_covid/app/modules/home/views/home_view.dart';
import 'package:getx_covid/app/modules/vaksinasi/bindings/vaksinasi_binding.dart';
import 'package:getx_covid/app/modules/vaksinasi/views/vaksinasi_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ABOUT,
      page: () => AboutView(),
      binding: AboutBinding(),
    ),
    GetPage(
      name: _Paths.VAKSINASI,
      page: () => VaksinasiView(),
      binding: VaksinasiBinding(),
    ),
  ];
}
