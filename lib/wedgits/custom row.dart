import 'package:flutter/material.dart';
import 'package:food_onboarding_lottie/constant/asset_constants.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleWithArrowButton extends StatelessWidget {
  final String title;

  const TitleWithArrowButton({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: paragraph5,
          ),
          Container(
            width: 40,
            height: 18,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AssetConstants.forwardArrow),
                alignment: Alignment.centerRight,
                fit: BoxFit.contain,
              ),
            ),
          )
        ],
      ),
    );
  }
  
  screenWidth(BuildContext context) {}
}
TextStyle paragraph5 = GoogleFonts.poppins(
  fontSize: 18,
  fontWeight: FontWeight.w600,
  color: Colors.black,
);