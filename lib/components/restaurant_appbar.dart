import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RestaurantAppBar extends StatelessWidget {
  const RestaurantAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 200,
      flexibleSpace: FlexibleSpaceBar(background: Image.asset(
        "Assets/images/Header-image.png",
         fit: BoxFit.cover,
       ),
      ),
      leading: Padding(
        padding: EdgeInsets.only(left: 16),
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: SvgPicture.asset("Assets/icons/back.svg"),
        ),
      ),
      actions: [
        CircleAvatar(
          backgroundColor: Colors.white,
          child: SvgPicture.asset("Assets/icons/share.svg", 
          color: Colors.black,
        ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: SvgPicture.asset("Assets/icons/search.svg", 
            color: Colors.black,
          ),
          ),
        ),
      ],
    );
  }
}