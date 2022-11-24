import 'package:flutter/material.dart';
import 'package:grovo/model/ad_banner.dart';
import 'package:grovo/view/home/components/CarouselSlider/banner_card.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselSliderView extends StatefulWidget {
  final List<AdBanner> bannerList;
  const CarouselSliderView({Key? key, required this.bannerList})
      : super(key: key);

  @override
  State<CarouselSliderView> createState() => _CarouselSliderViewState();
}

class _CarouselSliderViewState extends State<CarouselSliderView> {
  int _currentIndex=0;
  late List<Widget> _bannerList;
  @override
  void initState() {
    _bannerList =
        widget.bannerList.map((e) => BannerCard(imageUrl: e.image.toString())).toList();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: _bannerList,
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 16/9,
            viewportFraction: 1,
            onPageChanged: (index,reason){
              setState(() {
                _currentIndex=index;
              });
            }
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: widget.bannerList.map((e) {
            int index=widget.bannerList.indexOf(e);
            return Container(
              width: 8,
              height: 8,
              margin: EdgeInsets.symmetric(vertical: 10,horizontal: 2),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                // color:
                // color: _currentIndex == index
                //     ?Color.fromRGBO(0, 0, 0, 0.9)
                //     :Color.fromRGBO(0, 0, 0, 0.4)
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
