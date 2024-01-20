import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}
 
class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: Container( 
              child: Text(
               "Forgot Password",
              // style: TextStyle(color: Colors.black),
              style: const TextStyle(fontWeight: FontWeight.w900,fontSize: 20),
            ), 
            ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "Forgot Password",
                style: const TextStyle(fontWeight: FontWeight.w500,fontSize: 35),
              ),
            ),
            Container(
              child: Text(
                "Enter your email address and we will send you a reset instructions.",
                style: const TextStyle(fontWeight: FontWeight.w400,fontSize: 18),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "EMAIL ADDRESS",
                style: const TextStyle(fontWeight: FontWeight.w400,fontSize: 16),
                
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xffB4B4B4).withOpacity(0.2),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'test@gmail.com',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            new SizedBox(
              width: 350,
              height: 50,
              child:  ElevatedButton(
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),
              
              ),
              onPressed: () {
              color: Colors.green;
            }, 
            child: const Text(
              'RESET PASSWORD',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            ),
            ),     
        ],
      ),
      ),
    );
  }
}