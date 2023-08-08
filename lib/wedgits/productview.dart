import 'package:flutter/material.dart';

import 'package:food_onboarding_lottie/constant/asset_constants.dart';
import 'package:food_onboarding_lottie/constant/constants.dart';
import 'package:food_onboarding_lottie/wedgits/custom%20row.dart';

class ProductCard extends StatelessWidget {
  final Color? shadeColor;
  final String? image;
  final double? price;
  final String? title;
  final String? unit;
  //   final bool favoriteToggle;
  // VoidCallback onFavoriteButtonTap;

  ProductCard({
    Key? key,
    required this.shadeColor,
    required this.image,
    required this.price,
    required this.title,
    required this.unit,

    // required this.onFavoriteButtonTap, required this.favoriteToggle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: screenWidth(context) - 34,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(
                    left: 30,
                    right: 30,
                    top: 21,
                  ),
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 18),
                        child: FittedBox(
                          child: Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                              color: shadeColor,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(bottom: 8, top: 15),
                        child: FittedBox(
                            child: Image.network(
                                image ?? AssetConstants.errorIcon)),
                      )
                    ],
                  ),
                ),
              ),
              Text(
                '\$' + (price ?? 0).toString().padRight(4, '0'),
                style: paragraph5.copyWith(color: appGreenColor),
              ),
              Text(
                title ?? '',
                style: paragraph5.copyWith(color: Colors.black),
              ),
              const SizedBox(height: 2),
              Text(
                unit ?? '',
                style: paragraph5,
              ),
              const SizedBox(height: 15),
              Container(
                height: 1,
                color: appGreySecondary,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Row(
                
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      AssetConstants.addToCartIcon,
                      width: 20,
                      height: 20,
                    ),
                    Text(
                      'Add to cart',
                      style: paragraph5,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Positioned(
            top: 9,
            right: 8,
            child: Image.asset(
              AssetConstants.favoriteSelected,
              width: 18,
              height: 16,
            ))
      ],
    );
  }
}
