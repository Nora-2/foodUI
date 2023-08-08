import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:food_onboarding_lottie/wedgits/productview.dart';

import '../constant/constants.dart';

class productgrid
 extends StatelessWidget {

 
  const productgrid
  ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
    physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: screenWidth(context) > screenHeight(context) ? 4 : 2,
          childAspectRatio: 181 / 234,
          crossAxisSpacing: 18,
          mainAxisSpacing: 20),
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 20),
      itemCount: 6,
      itemBuilder: (context, index) => ProductCard(
        shadeColor: getCategoryColorFromId(index),
        image: getproductImageFromId(index),
        price: getProductPriceFromId(index),
        title: getProductTitelFromId(index),
        unit: getProductSubTitelFromId(index), 
       
        
        
      ),
      shrinkWrap: true,
      primary: false,
    );
  }
}