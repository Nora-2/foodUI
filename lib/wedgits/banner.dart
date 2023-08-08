// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';

// import '../constant/constants.dart';

// List<String> images = [
//  'assets/images/banner.png'
//   ];
//   Widget bannersView() {
//     List<Widget> bannersList = [];

//     images.forEach((element) {
//       bannersList.add(Container(
//         decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),),
//           height: 300,
//           width: double.infinity,

//             child: Image.asset(
//               element,
//               fit: BoxFit.cover,
//               width: double.infinity,
//             ),

//           ));
//     });
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Container(
//         decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),),

//        width: double.infinity,
//         child: CarouselSlider(
//             items: bannersList,
//             options: CarouselOptions(

//                 height: 200.0,
//                 enlargeCenterPage: true,
//                 autoPlay: true,
//                 aspectRatio: 16 / 9,
//                 autoPlayCurve: Curves.fastOutSlowIn,
//                 enableInfiniteScroll: true,
//                 autoPlayAnimationDuration: Duration(milliseconds: 800),
//                 viewportFraction: 0.8,
//               ),

//             )),

//     );
//   }

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:food_onboarding_lottie/wedgits/custom%20row.dart';

import '../constant/constants.dart';

class BannerCarousel extends StatefulWidget {
  // List<CarouselItem> items;

  BannerCarousel({
    Key? key,
    // required this.items,
  }) : super(key: key);

  @override
  State<BannerCarousel> createState() => _BannerCarouselState();
}

class _BannerCarouselState extends State<BannerCarousel> {
  int pageIndex = 0;
  List<String> images = [
    'assets/images/banner.png',
    'assets/images/banner.png',
    'assets/images/banner.png',
    'assets/images/banner.png',
    'assets/images/banner.png',
    'assets/images/banner.png'
  ];
  @override
  Widget build(BuildContext context) {
    double bannerWidth = screenWidth(context) - 34;
    double bannerHeight = bannerWidth * (283 / 380);

    return Align(
      alignment: Alignment.topCenter,
      child: Stack(
        children: [
          CarouselSlider.builder(
            itemCount: 6,
            itemBuilder: (context, index, pageIndex) => Container(
              margin: const EdgeInsets.only(bottom: 20),
              alignment: Alignment.bottomLeft,
              width: bannerWidth,
              height: bannerHeight,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(images[index]),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  left: bannerWidth * (44 / 380) +
                      (screenWidth(context) > screenHeight(context) ? 40 : 0),
                  bottom: screenWidth(context) > screenHeight(context)
                      ? 40
                      : bannerHeight * (78 / 283),
                ),
                child: Text(
                  '20% off on your\n first purchase',
                  style: paragraph5,
                ),
              ),
            ),
            options: CarouselOptions(
              initialPage: 0,
              height: screenWidth(context) > screenHeight(context)
                  ? 150
                  : (bannerHeight + 20),
              viewportFraction: 1,
              autoPlay: true,
              onPageChanged: (index, reason) {
                setState(() {
                  pageIndex = index;
                });
              },
            ),
          ),
          Positioned(
            bottom: screenWidth(context) > screenHeight(context)
                ? 40
                : bannerHeight * (50 / 303),
            left: 33,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ...List.generate(
                  6,
                  (index) => AnimatedContainer(
                    margin: const EdgeInsets.only(right: 6),
                    duration: const Duration(milliseconds: 400),
                    width: index == pageIndex ? 24 : 6,
                    height: 6,
                    decoration: BoxDecoration(
                      color: index == pageIndex ? appGreenColor : Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
