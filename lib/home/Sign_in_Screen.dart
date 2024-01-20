import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sign_button/constants.dart';
import 'package:sign_button/create_button.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    var maxHeight;
    var height;
    return Scaffold(
      body: SafeArea(child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: Container( 
              child: Text(
               "Sign In",
              // style: TextStyle(color: Colors.black),
              style: const TextStyle(fontWeight: FontWeight.w900,fontSize: 20),
            ), 
            ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "Welcome to",
                style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 35),
              ),
            ),
            Container(
              child: Text(
                "Enter your Phone number or Email address for sign in. Enjoy your food :)",
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
              height: 15,
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "PASSWORD",
                style: const TextStyle(fontWeight: FontWeight.normal,fontSize: 16),
                
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
                    ),
                  ),
                ),
              ),
            ),
             SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                "Forget Password?",
                style: const TextStyle(fontWeight: FontWeight.w400,fontSize: 12),    
              ),
            ),
            // Container(
            //   margin: const EdgeInsets.all(100),
            //   color: Colors.green,
            //   width: 20,
            //   height: 40,
            // )
            // SignInButton(
            //   buttonType: ButtonType.,
            //   onPressed: () {
            //     print('click');
            //   }
            // )
             SizedBox(
              height: 10,
            ),
            
            // Container(
            //   decoration: BoxDecoration(
            //     color: Colors.green.withOpacity(0.2),
            //     borderRadius: BorderRadius.circular(15),
                
            //   ),
            // child: Padding(
            //     padding: const EdgeInsets.all(4.0),
            //     child: Center(
            //       child: TextField(
            //         decoration: InputDecoration(
            //           border: InputBorder.none,
                      
            //           // ElevatedButton(onPressed: () {}, child: Text('SIGN IN'))
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
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
              'SIGN IN',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            ),
            ),     
             SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                "Don't have account?",
                style: const TextStyle(fontWeight: FontWeight.w400,fontSize: 12),    
              ),
            ),
            SizedBox(
              height: 10,
            ),
              Container(
                alignment: Alignment.center,
                child: Text(
                'Or',
                style: const TextStyle(fontWeight: FontWeight.w400,fontSize: 20), 
              ),
            ),
            SizedBox(
              height: 10,
            ),
            
            
            // Container(
            //   alignment: Alignment.center,
            //   padding: const EdgeInsets.all(65),
            //   decoration:  BoxDecoration(
            //     image:  DecorationImage(
            //       image: AssetImage('assets/images/t4.png'),
            //     ),
            //   ),
            //   )
        ],
      ),
    ),
    );
  }
}