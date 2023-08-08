import 'package:flutter/material.dart';
import 'package:food_onboarding_lottie/wedgits/custom%20row.dart';
import '../constant/constants.dart';
import '../wedgits/banner.dart';
import '../wedgits/categoryview.dart';
import '../wedgits/productgrid.dart';
import '../wedgits/textfield_search.dart';

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    double Width = screenWidth(context) - 34;
    return Scaffold(
      
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
         child: CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const searchtextfield(),
                verticalSpaceSmall,
                BannerCarousel(),
                verticalSpaceSmall,
                 TitleWithArrowButton(title: 'Categories',),
                  categorylistview(),
                   verticalSpaceMini,
                 TitleWithArrowButton(title: 'Featured products',),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
        const SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child:  const productgrid(),
          ),
        ),
      ],
    ))
        //  ListView(
        //   children: [
        //    verticalSpaceSmall,
        //    const searchtextfield(),
        //    verticalSpaceSmall,
        //     BannerCarousel(),
        //     verticalSpaceSmall,
        //      TitleWithArrowButton(title: 'Categories',),
            
        //       categorylistview(),
        //        verticalSpaceMini,
        //      TitleWithArrowButton(title: 'Featured products',),
             
        //        const productgrid(),
            
        //   ],
        // ),
     
    );
  }
}

