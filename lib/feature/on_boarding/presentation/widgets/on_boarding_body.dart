import 'package:dots_indicator/dots_indicator.dart';
import 'package:e_commerce/core/constant.dart';
import 'package:e_commerce/core/utils/size_config.dart';
import 'package:e_commerce/core/widget/custom_button.dart';
import 'package:e_commerce/feature/on_boarding/presentation/widgets/custom_indicator.dart';
import 'package:e_commerce/feature/on_boarding/presentation/widgets/custom_page_view.dart';
import 'package:flutter/material.dart';

class onBoardingViewBody extends StatefulWidget {
  const onBoardingViewBody({
    super.key,
  });

  @override
  State<onBoardingViewBody> createState() => _onBoardingViewBodyState();
}

class _onBoardingViewBodyState extends State<onBoardingViewBody> {
  PageController? pageController;

  @override
  void initState() {
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Stack(
      children: [
        CustomPageView(
          pageController: pageController,
        ),
        Positioned(
          right: 0,
          left: 0,
          bottom: SizeConfig.defaultSize! * 24,
          child: CustomIndiactor(
            dotsIndex: pageController!.hasClients ? pageController?.page : 0,
          ),
        ),
        Positioned(
          top: SizeConfig.defaultSize! * 10,
          right: 32,
          child: Text(
            "SKip",
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 14,
              fontWeight: FontWeight.bold,
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
