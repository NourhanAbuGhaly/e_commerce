
import 'package:e_commerce/core/utils/size_config.dart';
import 'package:e_commerce/core/widget/custom_button.dart';
import 'package:e_commerce/feature/Auth/presentation/pages/login/widgets/login_view.dart';
import 'package:e_commerce/feature/on_boarding/presentation/widgets/custom_indicator.dart';
import 'package:e_commerce/feature/on_boarding/presentation/widgets/custom_page_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
    print(pageController?.page);
    return Stack(
      children: [
        CustomPageView(
          pageController: pageController,
        ),
        Positioned(
            right: 0,
            left: 0,
            bottom: SizeConfig.defaultSize! * 24,
            child: CustomIndicator(
              dotsIndex: pageController!.hasClients ? pageController?.page : 0,
            )),
        Visibility(
          visible: pageController!.hasClients
              ? (pageController!.page == 2 ? false : true)
              : true,
          child: Positioned(
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
        ),
        Positioned(
          bottom: SizeConfig.defaultSize! * 10,
          right: SizeConfig.defaultSize! * 10,
          left: SizeConfig.defaultSize! * 10,
          child: CustomGeneralButton(
            text: pageController!.hasClients
                ? (pageController!.page == 2 ? "Get Started " : " Next ")
                : "Next",onTap:(){
           if (pageController!.page!<2){
pageController?.nextPage(duration: Duration(milliseconds: 500), curve: Curves.easeIn);
           }else{
             Get.to(()=> LoginView(),transition: Transition.rightToLeft, duration: Duration(milliseconds: 500));
           }
          },
          ),
        )
      ],
    );
  }
}
