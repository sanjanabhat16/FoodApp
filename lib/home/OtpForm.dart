import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:pinput/pinput.dart';

class OtpForm extends StatelessWidget {
  const OtpForm({super.key});

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 68,
      textStyle: TextStyle(
        fontSize: 22,
        color: Colors.black,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.black),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Login to FoodApp'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Container(
          margin: const EdgeInsets.only(top: 20),
          width: double.infinity,
          child: Column(
            children: [
              const Text("Verify phone number", style: TextStyle(
                color: Colors.black,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 40),
                child: const Text(
                  "Enter the 4-Digit code sent to you ", 
                  style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18
                 ),
                ),
              ),
              // Container(
              //   child: const Text("+91 983 422 432", 
              //   style: TextStyle(
              //     color: Colors.black,
              //     fontSize: 18,
              //   ),
              //   ),
              // ),
          
              Pinput(
                length: 4,
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: defaultPinTheme.copyWith(
                  decoration: defaultPinTheme.decoration!.copyWith(
                    border: Border.all(color: Colors.green),
                  ),
                ),
                onCompleted: (pin) => debugPrint(pin),
              ),
            ],  
          ),
        ),
    //     SizedBox(
    //       height: 10,
    //     ),
    //     Container(
    //       alignment: Alignment.center,
    //       padding: const EdgeInsets.all(200),
    //       decoration: BoxDecoration(
    //       image: DecorationImage(
    //       image: new AssetImage('assets/images/primary.png'),
    //       scale: 223.0,
    //       fit: BoxFit.fitHeight,
    //    ),
    //   ),
    // ),
    ),
    );
  }
}