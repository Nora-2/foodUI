import 'package:flutter/material.dart';
import 'package:food_onboarding_lottie/constant/constants.dart';

import '../constant/asset_constants.dart';

class searchtextfield extends StatelessWidget {
  const searchtextfield({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth(context) - 34,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),
      color: Color(0xFFF4F5F9)),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'Search keywords..',
            border: InputBorder.none,
          filled: true,
          fillColor: Color.fromARGB(212, 244, 245, 249),
          prefixIcon: Padding(
            padding: const EdgeInsetsDirectional.only(start: 4),
            child: Container(
              width: 48,
              alignment: Alignment.center,
              child: Image.asset(
                AssetConstants.searchIcon,
                width: 20,
                height: 20,
              ),
            ),
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 3),
            child: Container(
              width: 49,
              alignment: Alignment.center,
              child: Image.asset(
                AssetConstants.filterIcon,
                width: 19,
                height: 17,
              ),
            ),
           
          ),
        ),
      ),
    );
  }
}
