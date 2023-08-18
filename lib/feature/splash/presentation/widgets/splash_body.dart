import 'package:flutter/material.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text.rich(
            TextSpan(
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 51,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFFFFFFF),
                ),
                children: [
                  TextSpan(
                      text: "F", style: TextStyle(fontWeight: FontWeight.w700)),
                  TextSpan(
                      text: "ruit Market",
                      style:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 42))
                ]),
          ),
        ],
      ),
    );
  }
}
