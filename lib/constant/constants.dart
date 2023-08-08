import 'package:flutter/material.dart';

import 'asset_constants.dart';

const SizedBox verticalSpaceMini = SizedBox(height: 5);
const SizedBox verticalSpaceSmall = SizedBox(height: 11);


double screenWidth(BuildContext context, {double percentage = 1}) =>
    MediaQuery.of(context).size.width * percentage;
double screenHeight(BuildContext context, {double percentage = 1}) =>
    MediaQuery.of(context).size.height * percentage;
double statusBarHeight(BuildContext context) =>
    MediaQuery.of(context).padding.top;


    Color getCategoryColorFromId(int id) {
  switch (id) {
    case 1:
      return const Color(0xFFE6F2EA);
    case 2:
      return const Color(0xFFFFE9E5);
    case 3:
      return const Color(0xFFFFF6E3);
    case 4:
      return const Color(0xFFF3EFFA);
    case 5:
      return const Color(0xFFDCF4F5);
    case 6:
      return const Color(0xFFFFE8F2);
    default:
      return const Color(0xFFFFFFFF);
  }
}

String getCategoryIconFromId(int id) {
  switch (id) {
    case 1:
      return AssetConstants.vegetablesIcon;
    case 2:
      return AssetConstants.fruitsIcon;
    case 3:
      return AssetConstants.beveragesIcon;
    case 4:
      return AssetConstants.groceryIcon;
    case 5:
      return AssetConstants.edibleOilIcon;
    case 6:
      return AssetConstants.householdIcon;
    default:
      return AssetConstants.errorIcon;
  }
}
String getCategorytitelFromId(int id) {
  switch (id) {
    case 1:
      return 'Vegetables';
    case 2:
      return 'Fruits';
    case 3:
      return 'Beverages';
    case 4:
      return 'Grocery';
    case 5:
      return 'Edible oil';
    case 6:
      return 'Household';
    default:
      return 'Vegetables';
  }
}




Color getProductShadeFromId(int id) {
  switch (id) {
    case 1:
      return const Color(0xFFE6F2EA);
    case 2:
      return const Color(0xFFFFE9E5);
    case 3:
      return const Color(0xFFFFF6E3);
    case 4:
      return const Color(0xFFF3EFFA);
    case 5:
      return const Color(0xFFDCF4F5);
    case 6:
      return const Color(0xFFFFE8F2);
    default:
      return const Color(0xFFFFFFFF);
  }
}

String getproductImageFromId(int id) {
  switch (id) {
    case 1:
      return AssetConstants.peach;
    case 2:
      return AssetConstants.avocado;
    case 3:
      return AssetConstants.pineapple;
    case 4:
      return AssetConstants.graps;
    case 5:
      return AssetConstants.pomegrante;
    case 6:
      return AssetConstants.brocli;
    default:
      return AssetConstants.brocli;
  }
}
String getProductTitelFromId(int id) {
  switch (id) {
    case 1:
      return 'Fresh Peach';
    case 2:
      return 'Avacoda';
    case 3:
      return 'Pineapple';
    case 4:
      return 'Black Grapes';
    case 5:
      return 'Pomegranate';
    case 6:
      return 'Green Fresh Broccoli';
    default:
      return 'Vegetables';
  }
}
String getProductSubTitelFromId(int id) {
  switch (id) {
    case 1:
      return 'dozen';
    case 2:
      return '2.0 lbs';
    case 3:
      return '1.50 lbs';
    case 4:
      return '5.0 lbs';
    case 5:
      return '1.50 lbs';
    case 6:
      return '1kg';
    default:
      return '1.50 lbs';
  }
}

double getProductPriceFromId(int id) {
  switch (id) {
    case 0:
      return 8.00;
    case 1:
      return 7.00;
    case 2:
      return 9.90;
    case 3:
      return 7.05;
    case 4:
      return 2.09;
    case 5:
      return 3.00;
    default:
      return 2.55;
  }
}


const Color appGreenColor = Color(0xFF6CC51D);
const Color appGreyColor = Color(0xFF868889);
const Color appGreySecondary = Color(0xFFEBEBEB);
