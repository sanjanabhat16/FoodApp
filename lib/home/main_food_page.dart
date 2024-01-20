import 'package:flutter/material.dart';

class MainFoodpage extends StatefulWidget {
  const MainFoodpage({super.key});

  @override
  State<MainFoodpage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MainFoodpage> {
  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
           child: Container(
            margin: EdgeInsets.only(top:45, bottom: 15),
            padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                  Text("DELEVERY TO"),
                  Text("City"),
                  GestureDetector(
                    onTap: ()
                    {

                    },
                    child: Padding(
                      padding: EdgeInsets.all(0.0),
                      child: Icon(Icons.arrow_drop_down, color: Colors.black),
                  )
                  ),
                  ]
                )  
              ],
              ),
              //  Center(
              // child: Container(
              //   width: 45,
              //   height: 45,
                // child: Icon(Icons.search, color: Colors.white),
              // child: Column(
              //   children: [
              //      Text("Filter"),

              //   ]
              //   // {
              //   //     pattern => value
              //   //   })
              // ),
              // ),
              ),
        
              )
              // ),
                
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(15),
              //     color: Colors.blue,
              // ),
            //  ],
        ]
      ),
            );
            // );
  }
}


       