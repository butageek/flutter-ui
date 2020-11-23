import 'package:flutter/material.dart';
import 'package:food/constants.dart';
import 'package:food/screens/details/components/app_bar.dart';
import 'package:food/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppBar(),
      body: Body(),
    );
  }
}
