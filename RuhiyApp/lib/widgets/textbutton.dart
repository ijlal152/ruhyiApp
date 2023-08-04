import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruhiyapp/widgets/label_widgets.dart';

class CustomTextButton extends StatelessWidget {
  final String buttonTitle;
  final Color titleColor;
  const CustomTextButton({super.key, this.buttonTitle = '', this.titleColor = Colors.black});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){},
        child: LabelWidget(
          text: buttonTitle,
            color: titleColor,
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
        )
    );
  }
}
