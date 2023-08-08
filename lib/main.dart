import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_onboarding_lottie/views/onboarding_screen.dart';

import 'cubit_home/homecubit_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => HomecubitCubit()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home:OnboardingScreen(),
        ));
    // MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   title: 'FoodOn_Boarding',
    //   theme: ThemeData.dark(),
    //   home: const OnboardingScreen(),
    // );
  }
}
