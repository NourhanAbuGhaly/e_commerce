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
        Image.asset(image!),
        Text(
          title!,
          style: TextStyle(
            fontFamily: "Poppins",
              fontSize: 20,
              color: Color(0xff2f2e41),
              fontWeight: FontWeight.w600),
          textAlign: TextAlign.left,
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
