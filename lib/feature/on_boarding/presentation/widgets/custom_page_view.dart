import 'package:e_commerce/feature/on_boarding/presentation/widgets/page_view_item.dart';
import 'package:flutter/material.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        PageViewItems(
          title: "E Shopping ",
          subTitle: "Explore top organic fruits & grab them",
          image: "assets/images/onboarding1.png",
        ),
        PageViewItems(
          title: "Delivery on the way",
          subTitle: "Get your order by speed delivery",
          image: "assets/images/onboarding2.png",
        ),
        PageViewItems(
          title: "Delivery Arrived",
          subTitle: "Order is Arrived at your Place ",
          image: "assets/images/onboarding3.png",
        ),
      ],
    );
  }
}
