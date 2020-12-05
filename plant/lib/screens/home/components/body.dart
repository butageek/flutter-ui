import 'package:flutter/material.dart';
import 'package:plant/constants.dart';
import 'package:plant/screens/home/components/featured_plants.dart';
import 'package:plant/screens/home/components/header_with_searchbox.dart';
import 'package:plant/screens/home/components/recommend_plants.dart';
import 'package:plant/screens/home/components/title_with_more_btn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: "Recommended",
            press: () {},
          ),
          RecommendsPlants(),
          TitleWithMoreBtn(
            title: "Featured Plants",
            press: () {},
          ),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
