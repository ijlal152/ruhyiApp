import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruhiyapp/utils/app_colors.dart';
import 'package:ruhiyapp/widgets/flushbar.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final TextInputType textInputType;
  final List<TextInputFormatter>? inputFormatters;
  const CustomTextFormField({super.key, this.hintText = '', this.textInputType = TextInputType.text ,required this.controller, this.validator, this.inputFormatters});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: textInputType,
      cursorColor: AppColors.greenColor,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.textFieldBorderColor,
            width: 1.w
          ),
          borderRadius: BorderRadius.circular(10.r),     
    ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: const BorderSide(
            color: AppColors.textFieldBorderColor,
          )
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: const BorderSide(
            color: AppColors.textFieldBorderColor,
          )
        ),
        contentPadding: EdgeInsets.only(left: 15.w, bottom: 5.h, right: 15.w),
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w400
        )
      ),
      validator: validator,
    );
  }
}
