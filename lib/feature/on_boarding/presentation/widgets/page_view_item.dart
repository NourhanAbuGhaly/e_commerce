import 'package:e_commerce/core/utils/size_config.dart';
import 'package:e_commerce/core/widget/space_widget.dart';
import 'package:flutter/material.dart';

class PageViewItems extends StatelessWidget {
  const PageViewItems({super.key, this.title, this.subTitle, this.image});

  final String? title;
  final String? subTitle;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VerticalSpace(
          value: 18,
        ),
        SizedBox(
          height: SizeConfig.defaultSize! * 17,
          child: Image.asset(image!),
        ),
        VerticalSpace(
          value: 2.5,
        ),
        Text(
          title!,
          style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 20,
              color: Color(0xff2f2e41),
              fontWeight: FontWeight.w600),
          textAlign: TextAlign.left,
        ),
        VerticalSpace(
          value: 1,
        ),
        Text(
          subTitle!,
          style: TextStyle(
            fontFamily: "Poppins",
            fontSize: 15,
            color: Color(0xff2f2e41),
          ),
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}
