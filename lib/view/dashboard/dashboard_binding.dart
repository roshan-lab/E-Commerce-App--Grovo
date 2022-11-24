import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:grovo/controller/dashboard_controller.dart';
import 'package:grovo/controller/home_controller.dart';


class DashboardBinding extends Bindings{
  @override
  void dependencies(){
    Get.put(DashboardController());
    Get.put(HomeController());
  }
}