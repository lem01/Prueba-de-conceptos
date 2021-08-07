import 'package:get/get.dart';
import 'package:proof_concept_2/app/modules/grid_view_page/grid_view_page.dart';
import 'package:proof_concept_2/app/modules/grid_view_page/grid_view_page_bindig.dart';
import 'package:proof_concept_2/app/modules/home_page/home_page.dart';
import 'package:proof_concept_2/app/modules/login_page/login_page.dart';
import 'package:proof_concept_2/app/modules/spash/splash_page.dart';
import 'app_routes.dart';

class AppPages {
  static final List<GetPage> pages = [
    GetPage(
      name: AppRoutes.SPLASHROUTE,
      page: () => SplashPage(),
    ),
    GetPage(
      name: AppRoutes.LOGINROUTE,
      page: () => LoginPage(),
    ),
    GetPage(
      name: AppRoutes.HOMEROUTE,
      page: () => HomePage(),
    ),
    GetPage(
      name: AppRoutes.GRIDVIEWROUTE,
      page: () => GridViewPage(),
      binding: GridViewBinding(),
    ),
  ];
}
