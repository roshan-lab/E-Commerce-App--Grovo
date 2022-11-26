import 'package:get/get.dart';
import 'package:grovo/model/ad_banner.dart';
import 'package:grovo/model/category.dart';
import 'package:grovo/service/remote_service/remote_banner_service.dart';
import 'package:grovo/service/remote_service/remote_popular_category_service.dart';

class HomeController extends GetxController {
  static HomeController instance = Get.find();
  RxList<AdBanner> bannerList = List<AdBanner>.empty(growable: true).obs;
  RxBool isBannerLoading = false.obs;
  RxList<Category> popularCategoryList = List<Category>.empty(growable: true).obs;
  RxBool isPopulardataLoading = false.obs;

  @override
  void onInit() {
    getAdBanners();
    getPopularCategories();
    super.onInit();
  }

  void getAdBanners() async{
    try{
      isBannerLoading(true);
      var result = await RemoteBannerService().get();
      if (result != null) {
        bannerList.assignAll(adBannerListFromJson(result.body));
      }
    } finally {
      print(bannerList.length);
      isBannerLoading(false);
    }
  }

  void getPopularCategories() async{
    try{
      isPopulardataLoading(true);
      var result = await RemotePopularcategoryService().get();
      if (result != null) {
        popularCategoryList.assignAll(popularCategoryListFromJson(result.body));
      }
    } finally {
      print(popularCategoryList.length);
      isPopulardataLoading(false);
    }
  }
}