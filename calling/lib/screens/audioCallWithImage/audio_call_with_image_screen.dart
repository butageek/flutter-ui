import 'package:calling/screens/audioCallWithImage/components/body.dart';
import 'package:calling/size_config.dart';
import 'package:flutter/material.dart';

class AudioCallWithImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
