import 'package:flutter/material.dart';
import 'package:foodapp/RestaurantPage.dart';
import 'package:foodapp/home/OtpForm.dart';
import 'package:foodapp/home/Sign_in_Screen.dart';
import 'package:foodapp/home/forgot_password.dart';
// import 'package:foodapp/home/page2.dart';
// import 'package:foodapp/home/page3.dart';
// import 'package:foodapp/home/sign_in.dart';
// import 'package:foodapp/RestaurantPage.dart';
// import 'package:foodapp/screens/home_screen.dart';
import 'package:foodapp/home/main_food_page.dart';
import 'package:foodapp/home/menu.dart';

void main() {
  runApp(const FoodApp());
}

class FoodApp extends StatelessWidget {
  const FoodApp({Key? key}) : super(key: key);
 

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Way',
      theme: buildThemeData(),
      home: Menu(),
    );
//       theme: ThemeData(
//         scaffoldBackgroundColor: Colors.white,
//         primarySwatch: Colors.blue,
//       );
//       home: const RestaurantPage();
  }
  
  main_food_page() {}
}


buildThemeData() {
}