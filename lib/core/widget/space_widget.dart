import 'package:e_commerce/core/utils/size_config.dart';
import 'package:flutter/material.dart';

class HorizientalSpace extends StatelessWidget {
  const HorizientalSpace({super.key, this.value});
final double? value;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: SizeConfig.defaultSize!*value!,
    );
  }
}

class VerticalSpace extends StatelessWidget {
  const VerticalSpace({super.key, this.value});
final double? value;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: SizeConfig.defaultSize!*value!,
    );
  }
}
