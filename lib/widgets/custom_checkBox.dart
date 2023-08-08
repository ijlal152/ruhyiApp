import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ruhiyapp/utils/app_assets.dart';

class CustomCheckBox extends StatelessWidget {
  bool value;
  VoidCallback onTap;
  CustomCheckBox({super.key, required this.value, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return value
        ? InkWell(
          onTap: onTap,
          child: SvgPicture.asset(AppAssets.selectedSvg))
        : InkWell(
          onTap: onTap,
          child: SvgPicture.asset(AppAssets.unSelectedSvg));
  }
}