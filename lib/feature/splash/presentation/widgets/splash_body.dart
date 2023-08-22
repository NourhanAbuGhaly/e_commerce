import 'package:e_commerce/feature/on_boarding/presentation/on_boarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fadingAnimation;
  Animation<double>? fadingAnimation1;

  @override
  void initState() {
    super.initState();
    animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 600));
    fadingAnimation =
        Tween<double>(begin: .2, end: 1).animate(animationController!);
    fadingAnimation1 =
        Tween<double>(begin: .2, end: 1).animate(animationController!);
    // ..addListener(() {
    //   setState(() {
    //     if (animationController!.isCompleted) {
    //       animationController!.repeat(reverse: true);
    //     }
    //   });
    // });
    // animationController?.forward();
    animationController!.repeat(reverse: true);
  }

  void goToNextView() {
    Future.delayed(Duration(seconds: 3), () {
      Get.to(() => onBoardingView(), transition: Transition.fade);
    });
  }

  @override
  void dispose() {
    animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        //  mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          // AnimatedBuilder(
          //   animation: fadingAnimation!,
          //   builder: (context, _) => Opacity(
          //     opacity: fadingAnimation!.value,
          //     child: Text.rich(TextSpan(
          //       style: TextStyle(
          //         fontFamily: 'Poppins',
          //         fontSize: 51,
          //         color: Color(0xFFFFFFFF),
          //       ),
          //       children: [
          //         TextSpan(
          //             text: "F", style: TextStyle(fontWeight: FontWeight.w700)),
          //         TextSpan(
          //             text: "ruit Market",
          //             style:
          //                 TextStyle(fontWeight: FontWeight.w700, fontSize: 42))
          //       ],
          //     )),
          //   ),
          // ),
          FadeTransition(
            opacity: fadingAnimation1!,
            child: Opacity(
              opacity: fadingAnimation!.value,
              child: Text.rich(TextSpan(
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 51,
                  color: Color(0xFFFFFFFF),
                ),
                children: [
                  TextSpan(
                      text: "F", style: TextStyle(fontWeight: FontWeight.w700)),
                  TextSpan(
                      text: "ruit Market",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 42))
                ],
              )),
            ),
          ),
          Spacer(),
          Image.asset("assets/images/splash_view_image.png")
        ],
      ),
    );
  }
}
