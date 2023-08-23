import 'package:e_commerce/core/constant.dart';
import 'package:e_commerce/core/utils/size_config.dart';
import 'package:e_commerce/core/widget/space_widget.dart';
import 'package:flutter/material.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VerticalSpace(
          value: 10,
        ),
        SizedBox(
          child: Image.asset(KLogo),
          height: SizeConfig.defaultSize! * 17,
        ),
        Text.rich(
          TextSpan(
              style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 51,
                color: Color(0xff69a03a),
              ),
              children: [
                TextSpan(
                  text: "F",
                  style: TextStyle(fontWeight: FontWeight.w700),
                ),
                TextSpan(
                  text: "ruit Market",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
              ]),
        ),
        Row(
          children: [
            Flexible(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
            ))
          ],
        )
      ],
    );
  }
}
