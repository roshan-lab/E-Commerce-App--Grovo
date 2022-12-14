import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grovo/authetication/login.dart';
import 'package:grovo/route/app_page.dart';
import 'package:grovo/route/app_route.dart';
import 'package:grovo/service/remote_service/remote_banner_service.dart';
import 'package:grovo/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: AppPage.list,
      initialRoute: AppRoute.dashboard,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.light,
    );
    // return MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   home: Scaffold(
    //     body: LogIn(),
    //   ),
    // );

  }
}




