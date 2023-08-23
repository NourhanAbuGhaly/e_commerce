import 'package:e_commerce/core/utils/size_config.dart';
import 'package:e_commerce/core/widget/custom_button.dart';
import 'package:e_commerce/feature/on_boarding/presentation/widgets/custom_page_view.dart';
import 'package:flutter/material.dart';

class onBoardingViewBody extends StatelessWidget {
  const onBoardingViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Stack(
      children: [
        CustomPageView(),
        Positioned(
          top: SizeConfig.defaultSize! * 10,
          right: 32,
          child: Text(
            "SKip",
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 14,
              color: Color(0xff898989),
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Positioned(
          bottom: SizeConfig.defaultSize! * 10,
          right: SizeConfig.defaultSize! * 10,
          left: SizeConfig.defaultSize! * 10,
          child: CustomGeneralButton(
            text: "Next",
          ),
        )
      ],
    );
  }
}
