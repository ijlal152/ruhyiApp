import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ruhiyapp/utils/app_assets.dart';
import 'package:ruhiyapp/utils/app_colors.dart';
import 'package:ruhiyapp/utils/app_string.dart';
import 'package:ruhiyapp/widgets/custom_button.dart';
import 'package:ruhiyapp/widgets/label_widgets.dart';

class CustomRows extends StatelessWidget {
  final String text;
  const CustomRows({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SvgPicture.asset(
          AppAssets.bulletSvg,
          height: 15.h,
          width: 15.w,
        ),
        10.horizontalSpace,
        Flexible(
          child: LabelWidget(
            text: text,
            fontSize: 14.sp,
            color: AppColors.darkBlue,
            fontWeight: FontWeight.w400,
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }
}

class AvatarAndButton extends StatelessWidget {
  final String avatar;
  final double height;
  final VoidCallback onTap;
  const AvatarAndButton(
      {super.key, required this.avatar, required this.onTap, this.height = 25});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25.w, right: 35.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(avatar),
          height.verticalSpace,
          CustomButton(
            onTap: onTap,
            buttonWidth: 185.w,
            buttonTitle: AppStrings.next,
            bgColor: AppColors.greenColor,
          )
        ],
      ),
    );
  }
}

class PrayerRow extends StatelessWidget {
  final String volumnBtn;
  final String prayerTime;
  final String arabicPrayerTime;
  final String icon;
  final VoidCallback onTap;
  const PrayerRow(
      {super.key,
      required this.volumnBtn,
      required this.prayerTime,
      required this.arabicPrayerTime,
      required this.icon,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 20.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SvgPicture.asset(volumnBtn),
              20.horizontalSpace,
              LabelWidget(
                text: prayerTime,
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.darkBlue,
              ),
              40.horizontalSpace,
              LabelWidget(
                text: arabicPrayerTime,
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: AppColors.darkBlue,
              ),
            ],
          ),
          SvgPicture.asset(icon),
        ]),
      ),
    );
  }
}
