import 'package:flutter/material.dart';
import 'package:shop/constants.dart';
import 'package:shop/models/product.dart';
import 'package:shop/screens/details/components/add_to_cart.dart';
import 'package:shop/screens/details/components/color_and_size.dart';
import 'package:shop/screens/details/components/counter_with_fav_btn.dart';
import 'package:shop/screens/details/components/description.dart';
import 'package:shop/screens/details/components/product_title_with_image.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: size.height * 0.35),
                padding: EdgeInsets.only(
                  top: size.height * 0.12,
                  left: kDefaultPadding,
                  right: kDefaultPadding,
                ),
                height: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                child: Column(
                  children: [
                    ColorAndSize(product: product),
                    SizedBox(height: kDefaultPadding / 2),
                    Description(product: product),
                    SizedBox(height: kDefaultPadding / 2),
                    CounterWithFavBtn(),
                    SizedBox(height: kDefaultPadding / 2),
                    AddToCart(product: product),
                  ],
                ),
              ),
              ProductTitleWithImage(product: product),
            ],
          ),
        ],
      ),
    );
  }
}
