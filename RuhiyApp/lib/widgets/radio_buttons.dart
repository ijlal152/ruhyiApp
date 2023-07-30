import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RadioButtonWidget extends StatelessWidget {
  final bool isSelected;
  final String selectedSvg;
  final String unSelectedSvg;
  final VoidCallback onTap;
  const RadioButtonWidget({super.key,
  this.isSelected = false,
  required this.selectedSvg,
  required this.unSelectedSvg, 
  required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20.h,
      child: isSelected 
      ? InkWell(onTap: onTap ,child: SvgPicture.asset(selectedSvg)) 
      : InkWell(onTap: onTap ,child: SvgPicture.asset(unSelectedSvg)),
    );
  }
}