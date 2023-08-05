import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruhiyapp/utils/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  const CustomTextFormField({super.key, this.hintText = '', required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      alignment: Alignment.centerLeft,
      decoration: BoxDecoration(
        color: Colors.white,
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: AppColors.textFieldBorderColor)),
      child: TextFormField(
        controller: controller,
        cursorColor: AppColors.greenColor,
        decoration: InputDecoration(
          fillColor: Colors.white,
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(left: 15.w, bottom: 8.h, right: 15.w),
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w400
          )
        ),
      ),
    );
  }
}
