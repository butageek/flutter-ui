import 'package:calling/constants.dart';
import 'package:calling/screens/dialScreen/components/body.dart';
import 'package:calling/size_config.dart';
import 'package:flutter/material.dart';

class DialScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kBackgoundColor,
      body: Body(),
    );
  }
}
