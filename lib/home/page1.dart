import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final height, width;
    // final deviceHeight = MediaQuery.of(context).size.height;
    // final deviceWidth = MediaQuery.of(context).size.width;
    Offset myRect;
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(200),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: new AssetImage('assets/images/l1.png'),
                    scale: 223.0,
                    fit: BoxFit.fitHeight,
                  ),
                  
                ),
                // height: deviceWidth * 0.50,
                // child: const FittedBox(
                // //   child: CircleAvatar(

                // //     backgroundImage: AssetImage('assets/images/l1.png'),
                // // ),
                
                // ),
              ),
            ),
            // Container(
              // height: deviceHeight * 0.50,
              // width: double.infinity,
              //  color: Colors.white
              // ),
              Container(
                alignment: Alignment.bottomLeft,
                padding: const EdgeInsets.all(85),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Text.png'),
                  )
                  
                 
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10) ,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Indicator.png')
                  )
                ),
              ),
              Container(
                padding: const EdgeInsets.all(65) ,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/Primary.png')
                  )
                ),
              ),
            ],
            ),
            ),
    );
  }
}