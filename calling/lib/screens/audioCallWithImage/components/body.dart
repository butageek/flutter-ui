import 'package:calling/components/rounded_button.dart';
import 'package:calling/constants.dart';
import 'package:calling/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        // image
        Image.asset(
          "assets/images/full_image.png",
          fit: BoxFit.cover,
        ),
        // black layer
        DecoratedBox(
          decoration: BoxDecoration(color: Colors.black.withOpacity(0.3)),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Jemmy \nWilliams",
                  style: Theme.of(context)
                      .textTheme
                      .headline3
                      .copyWith(color: Colors.white),
                ),
                VerticalSpacing(of: 10),
                Text(
                  "Incoming 00:01".toUpperCase(),
                  style: TextStyle(color: Colors.white60),
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RoundedButton(
                      press: () {},
                      color: Colors.white,
                      iconColor: Colors.black,
                      iconSrc: "assets/icons/Icon Mic.svg",
                    ),
                    RoundedButton(
                      press: () {},
                      color: kRedColor,
                      iconColor: Colors.white,
                      iconSrc: "assets/icons/call_end.svg",
                    ),
                    RoundedButton(
                      press: () {},
                      color: Colors.white,
                      iconColor: Colors.black,
                      iconSrc: "assets/icons/Icon Volume.svg",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}