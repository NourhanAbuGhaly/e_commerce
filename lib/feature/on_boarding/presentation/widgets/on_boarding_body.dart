import 'package:e_commerce/core/utils/size_config.dart';
import 'package:flutter/material.dart';

class onBoardingViewBody extends StatelessWidget {
  const onBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Stack(
      children: [
        Positioned(
          top: SizeConfig.defaultSize! * 10,
          right: 32,
          child: Text(
            "SKip",
            style: TextStyle(
                fontFamily: "Poppins", fontSize: 14, color: Color(0xff898989)),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }
}
