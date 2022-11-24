import 'package:flutter/material.dart';
import 'package:grovo/component/main_header.dart';
import 'package:get/get.dart';
import 'package:grovo/controller/controller.dart';
import 'package:grovo/view/home/components/carousel_loading.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
      children: [
        MainHeader(),
       Obx((){
         if(homeController.isBannerLoading.value){
           return CarouselLoading();
         }
         else{
           return CarouselLoading();
         }
       }),
      ],
    ),
    );
  }
}
