import 'package:e_commerce/core/constant.dart';
import 'package:e_commerce/core/utils/size_config.dart';
import 'package:flutter/material.dart';

class CustomGeneralButton extends StatelessWidget {
  const CustomGeneralButton(
      {super.key, this.text, this.onTap});

  final String? text;
  final VoidCallback? onTap;
  // final IconData? iconData;
  // final Color? color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        width: SizeConfig.screenWidget,
        decoration: BoxDecoration(
            color: KMaibColor, borderRadius: BorderRadius.circular(8)),
        child: Center(
          child: Text(
            text!,
            style: TextStyle(
                color: Color(0xffffffff),
                fontWeight: FontWeight.w500,
                fontSize: 14),
            textAlign: TextAlign.left,
          ),
        ),
      ),
    );
  }
}
