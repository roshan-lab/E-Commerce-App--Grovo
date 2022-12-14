import 'package:flutter/material.dart';
import 'package:grovo/authetication/catalogue.dart';
import 'package:grovo/authetication/login.dart';
import 'package:grovo/component/main_header.dart';
import 'package:get/get.dart';
import 'package:grovo/controller/controller.dart';
import 'package:grovo/view/home/components/CarouselSlider/carousel_loading.dart';
import 'package:grovo/view/home/components/CarouselSlider/carousel_slider_view.dart';
import 'package:grovo/view/home/components/popular_category/popular_category.dart';
import 'package:grovo/view/home/components/popular_category/popular_category_loading.dart';
import 'package:grovo/view/home/components/section_title.dart';
//import 'package:alan_voice/alan_voice.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // _HomeScreenState() {
  //   /// Init Alan Button with project key from Alan Studio
  //   AlanVoice.addButton("4ef36e67a1484559374e9514c16f37a52e956eca572e1d8b807a3e2338fdd0dc/stage",
  //     buttonAlign: AlanVoice.BUTTON_ALIGN_RIGHT,
  //   );
  //
  //   /// Handle commands from Alan Studio
  //   AlanVoice.onCommand.add((command) {
  //     debugPrint("got new command ${command.toString()}");
  //   });
  // }
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Column(
        children: [
          MainHeader(),
          SizedBox(height: 10,),
          Obx(() {
            if (homeController.bannerList.isNotEmpty) {
              return CarouselSliderView(bannerList: homeController.bannerList);
            } else {
              return CarouselLoading();
            }
          }),
          const Padding(
            padding: EdgeInsets.only(left: 10,right: 10),
            child: Divider(color: Colors.black12,thickness: 2,),
          ),
          SizedBox(height: 10,),
          SectionTitle(title: "Popular Category"),
          Obx(() {
            if (homeController.popularCategoryList.isNotEmpty) {
              return InkWell(child: PopularCategory(categories: homeController.popularCategoryList),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Catalogue()));
              },
              );
            } else {
              return PopularCategoryLoading();
            }
          }),

        ],
      ),
    );
  }
}
