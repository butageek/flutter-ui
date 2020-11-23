import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food/components/search_bar.dart';
import 'package:food/constants.dart';
import 'package:food/screens/home/components/category_list.dart';
import 'package:food/screens/home/components/discount_card.dart';
import 'package:food/screens/home/components/item_list.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchBox(
            onChanged: (value) {},
          ),
          CategoryList(),
          ItemList(),
          DiscountCard(),
        ],
      ),
    );
  }
}
