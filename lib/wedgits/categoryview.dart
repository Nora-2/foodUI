import 'package:flutter/material.dart';

import '../constant/constants.dart';
import 'categorylistview.dart';

class categorylistview extends StatelessWidget {
  const categorylistview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      width: screenWidth(context) - 34,
      child: ListView.builder(
        shrinkWrap: true,
        physics:   const BouncingScrollPhysics(), 
        
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: GestureDetector(
                    child: categoryListView( id:index),
                    onTap: () {},
                  ),
            ),
            
            itemCount:6),
    );
  }
}

