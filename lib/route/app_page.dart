import 'package:get/get.dart';
import 'package:grovo/route/app_route.dart';
import 'package:grovo/view/dashboard/dashboard_screen.dart';
import 'package:grovo/view/dashboard/dashboard_binding.dart';


class AppPage{
  static var list=[
    GetPage(
      name: AppRoute.dashboard,
      page:()=> const DashboardScreen(),
      binding: DashboardBinding(),
    )
  ];
}