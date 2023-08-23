import 'package:dots_indicator/dots_indicator.dart';
import 'package:e_commerce/core/constant.dart';
import 'package:flutter/material.dart';

class CustomIndiactor extends StatelessWidget {
  const CustomIndiactor({super.key, this.dotsIndex});

  final double? dotsIndex;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: 3,
      position: dotsIndex!.toInt(),
      decorator: DotsDecorator(
        color: Colors.transparent,
        activeColor: KMaibColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: KMaibColor),
        ),
      ),
    );
  }
}
