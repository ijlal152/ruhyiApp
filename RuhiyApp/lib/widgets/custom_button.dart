import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruhiyapp/utils/app_colors.dart';
import 'package:ruhiyapp/widgets/label_widgets.dart';

class CustomButton extends StatelessWidget {
  final String buttonTitle;
  final Color bgColor;
  final Color titleColor;
  final Color overlayColor;
  final EdgeInsets padding;
  final double buttonHeight;
  final double buttonWidth;
  final bool enableShadow;
  final bool isDisabled;
  final Color borderColor;
  final double borderWidth;
  final VoidCallback onTap;

  const CustomButton({super.key, 
  this.buttonTitle = '',
  this.titleColor = Colors.white,
  this.bgColor = AppColors.greenColor,
  this.overlayColor = Colors.white,
  this.padding = EdgeInsets.zero,
  this.buttonHeight = 50,
  this.enableShadow = false,
  this.buttonWidth = double.maxFinite,
  this.isDisabled = false,
  this.borderWidth = 2,
  this.borderColor = AppColors.greenColor,
  required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: buttonHeight,
      width: buttonWidth,
      margin: EdgeInsets.zero,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        //border: Border.all(color: borderColor, width: borderWidth)
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          foregroundColor: overlayColor,
          padding: padding,
          fixedSize: Size(buttonWidth, buttonHeight),
          elevation: enableShadow ? 4 : 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
            side: BorderSide(color: borderColor)
          ),
        ),
        onPressed: !isDisabled ?  onTap : null, 
        child: LabelWidget(
          text: buttonTitle,
          color: titleColor,
          fontWeight: FontWeight.w600,
          fontSize: 18.sp,
        )
      ),
    );
  }
}