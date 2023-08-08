import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:food_onboarding_lottie/constant/constants.dart';
import 'package:google_fonts/google_fonts.dart';

class categoryListView extends StatelessWidget {
  categoryListView({
    required this.id,
    Key? key,
  }) : super(key: key);
  int id;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
     
      child: Column(
       mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Container(
        padding: const EdgeInsets.symmetric(vertical: 5),
        margin: const EdgeInsets.only(
          left: 10,
          top: 17,
          bottom: 29,
          right: 10,
        ),
        width: 52,
        height: 52,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: getCategoryColorFromId(id+1),
        ),
        child: Image.asset(
          getCategoryIconFromId(id+1 ),
        ),
      ),
      Positioned(
        bottom: 1,
        child: Text(
         getCategorytitelFromId(id+1),
          style: paragraph7,
        ),
      ),
      ],
      ),
    );
  }
}
TextStyle paragraph7 = GoogleFonts.poppins(
  fontSize: 10,
  fontWeight: FontWeight.w500,
  color: appGreyColor,
);