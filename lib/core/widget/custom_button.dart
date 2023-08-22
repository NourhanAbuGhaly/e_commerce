import 'package:e_commerce/core/constant.dart';
import 'package:flutter/material.dart';

class CustomGeneralButton extends StatelessWidget {
  const CustomGeneralButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

decoration: BoxDecoration(color: KMaibColor),      child: Center(
        child: Text(
          "Next",
          style: TextStyle(
              color: Color(0xffffffff),
              fontWeight: FontWeight.w500,
              fontSize: 14),textAlign: TextAlign.left,
        ),
      ),
    );
  }
}
