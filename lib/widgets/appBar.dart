import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ruhiyapp/utils/app_colors.dart';
import 'package:ruhiyapp/utils/app_theme.dart';

import '../utils/app_assets.dart';
import 'label_widgets.dart';

class HomeAppBar extends StatelessWidget {
  final String userName;
  final String islamicDate;
  final VoidCallback onTap1;
  final VoidCallback onTap2;
  const HomeAppBar({super.key, required this.userName, required this.islamicDate, required this.onTap1, required this.onTap2});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 200.w,
      leading: Padding(
        padding: EdgeInsets.only(left: 20.w, ),
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text.rich(
          TextSpan(
            text: "Salam, ",
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.darkBlue
            ),
            children: [
              TextSpan(
                text: userName,
                style: TextStyle(
                  fontSize: 14.sp,
                  fontFamily: semiBold,
                  fontWeight: FontWeight.w600,
                  color: AppColors.darkBlue
                )
              ),
            ]
          ), 
        ),
        3.verticalSpace,
        LabelWidget(
          text: islamicDate,
          color: AppColors.greenColor,
          fontSize: 10.sp,
          fontWeight: FontWeight.w500,
        ),
      ],
    ),
      ),

      actions: <Widget>[
        InkWell(
          onTap: onTap1,
          child: SvgPicture.asset( AppAssets.qiblaSvg, height: 40.h, width: 40.w,)
        ),
        10.horizontalSpace,
        InkWell(
          onTap: onTap2,
          child: SvgPicture.asset( AppAssets.personSvg, height: 40.h, width: 40.w,)
        ),
        20.horizontalSpace
      ],
    );
  }
}



class MyAppBar extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const MyAppBar({super.key, this.title = "", required this.onTap});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leadingWidth: 50.w,
      leading: IconButton(
        onPressed: (){
          Navigator.pop(context);
        }, 
        icon: const ImageIcon(
          AssetImage(AppAssets.backArrowPng),
          color: AppColors.greenColor,
        )
      ),
      title: LabelWidget(
        text: title,
        fontSize: 18.sp,
        fontWeight: FontWeight.w600,
        color: AppColors.darkBlue,
      ),
      actions: <Widget>[
        InkWell(
          onTap: onTap,
          child: SvgPicture.asset( AppAssets.qiblaSvg, height: 40.h, width: 40.w,)
        ),
        20.horizontalSpace
      ],
    );
  }
}