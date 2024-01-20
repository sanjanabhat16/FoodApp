
import 'package:flutter/material.dart';
import 'package:foodapp/constants.dart';
import 'package:foodapp/demoData.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  
  get images => null;
  
  get FlatButton => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //   body: CustomScrollView(
    //     slivers: [
    //       SliverAppBar(
    //         backgroundColor: Colors.transparent,
    //     elevation: 0,
    //     title: Column(
    //       children: [
    //         Center(
    //           child: Text(
    //           "Delivery to".toUpperCase(),
    //           style: Theme.of(context).textTheme.caption!.copyWith(color: kActiveColor),
    //         ),
    //         ),
    //         Text(
    //           "San Francisco",
    //           style: TextStyle(color: Colors.black),
    //         ),
    //       ],
    //     ),
    //     actions: [TextButton(onPressed: () {},
    //      child: Text(
    //       "Filter", 
    //        style: TextStyle(color: Colors.black),
    //     ),
    //     )
    //     ],
    //   ),
    //   SliverToBoxAdapter(
    //     child: AspectRatio(
    //       aspectRatio: 1.81,
    //       child: Stack(
    //         alignment: Alignment.bottomRight,
    //         children: [
    //           PageView.builder(
    //             itemCount: demoBigImages.length,
    //             itemBuilder: (context, index) => Image.asset),
    //             ),
    //             ),
    //             Positioned(
    //               bottom: 16,
    //               right: 16,
    //               child: IndicatorDot(isActive: false),
    //             ),
    //         ],
    //       ),
    //       ),
    //     ),
    //     ],
    //   ),
    // );
    body: 
    Padding( 
      padding: const EdgeInsets.all(12.0), 
      // listview with scroll 
      // direction vertical 
      child: ListView (  
        scrollDirection: Axis.vertical,  
        // listview children  
        children: [  
          Row( 
            children: [ 
              // image count in the list 
              // or length of the list 
              Text("Image Count:$demoBigImages"),  
              SizedBox(width:45), 
              // icon button to add  
              // the image to the list 
              FlatButton.icon(  
                icon:Icon(Icons.add), 
                label:Text("Add Image"), 
                // when pressed call 
                // the add method  
                onPressed:(){    
                   
                }, 
              ) 
            ] 
             // traversal in the list 
            ),// and display each image . 
            for(var item in demoBigImages) (
            Center( 
              child:Container( 
                  width:200, 
                  height:150, 
                  child:Text(item) 
              ), 
            )
            ),
        ],
      ),
    ),
    );
  }
}

class Assets {
  
}

class IndicatorDot extends StatelessWidget {
  const IndicatorDot({
    required this.isActive,
    super.key,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4,
      width: 8,
      decoration: BoxDecoration(
        color: isActive ? Colors.white: Colors.white54,
        borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
    );
  }
}