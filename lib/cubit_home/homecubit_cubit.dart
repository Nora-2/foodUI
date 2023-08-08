import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_onboarding_lottie/views/home.dart';
import 'package:meta/meta.dart';

import '../views/Favorites.dart';
import '../views/cart.dart';
import '../views/profile.dart';

part 'homecubit_state.dart';

class HomecubitCubit extends Cubit<HomecubitState> {
  HomecubitCubit() : super(HomecubitInitial());
    static HomecubitCubit get(context)=>BlocProvider.of(context);
  List<Widget> Screens = [
    home(),
    profile(),
    Favorites(),
    cart(),
  ];
  int indexBottomNavBar = 0;
  void changeIndexBottom(int x){
    indexBottomNavBar = x;
    emit(BottomNavBarChanged());
  }
}
