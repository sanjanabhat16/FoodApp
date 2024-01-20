import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodapp/components/RestaurantInfo.dart';
import 'package:foodapp/components/restaurant_categories.dart';

class RestaurantPage extends StatefulWidget {
  const RestaurantPage({super.key});

  @override
  State<RestaurantPage> createState() => _RestaurantPageState();
}

class _RestaurantPageState extends State<RestaurantPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          RestaurantAppBar(),
          SliverToBoxAdapter(
            child: RestaurantInfo(),
        ),
        SliverToBoxAdapter(
          child: Categories(
            onChanged: (value) {},
            selectedIndex: 0,
          ),
        )   
        ],
      ),
    );
  }
}

class RestaurantAppBar extends StatelessWidget {
  const RestaurantAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 200,
      flexibleSpace: FlexibleSpaceBar(background: Image.asset(
        "assets/images/Header-image.png",
         fit: BoxFit.cover,
       ),
      ),
      leading: Padding(
        padding: EdgeInsets.only(left: 16),
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: SvgPicture.asset("assets/icons/back.svg"),
        ),
      ),
      actions: [
        CircleAvatar(
          backgroundColor: Colors.white,
          child: SvgPicture.asset("assets/icons/share.svg", 
          color: Colors.black,
        ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: SvgPicture.asset("assets/icons/search.svg", 
            color: Colors.black,
          ),
          ),
        ),
      ],
    );
  }
}