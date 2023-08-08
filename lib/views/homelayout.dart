import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_onboarding_lottie/views/cart.dart';


import '../constant/asset_constants.dart';
import '../cubit_home/homecubit_cubit.dart';



class HomeLayout extends StatelessWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: BlocProvider.of<HomecubitCubit>(context),
      child: BlocConsumer<HomecubitCubit, HomecubitState>(
        builder: (context, state) => Scaffold(
          backgroundColor: Colors.white,
         
          
          body: HomecubitCubit.get(context)
              .Screens[HomecubitCubit.get(context).indexBottomNavBar],
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const cart()));
            },
            child: Image.asset(
            AssetConstants.cartIconWhite,
            width: 21,

          ),
            backgroundColor: const Color(0xff6CC51D),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.endDocked,
              
          bottomNavigationBar:  AnimatedBottomNavigationBar (
            icons: const [
              Icons.home,
              Icons.account_circle_outlined,
              Icons.favorite_border,
          
            ],
            activeIndex: HomecubitCubit.get(context).indexBottomNavBar,
            onTap: (x) {
              HomecubitCubit.get(context).changeIndexBottom(x);
            },
            activeColor: Colors.black,
       
          ),
        ),
        listener: (context, state) {},
      ),
    );
  }
}
