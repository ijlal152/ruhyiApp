import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ruhiyapp/utils/app_assets.dart';
import 'package:ruhiyapp/utils/app_colors.dart';
import 'package:ruhiyapp/utils/app_string.dart';
import 'package:ruhiyapp/utils/app_theme.dart';
import 'package:ruhiyapp/widgets/custom_button.dart';
import 'package:ruhiyapp/widgets/custom_checkBox.dart';
import 'package:ruhiyapp/widgets/label_widgets.dart';
import 'package:ruhiyapp/widgets/radio_buttons.dart';

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
            textHeight: 1.3.h,
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
              SizedBox(
                width: 120.w,
                child: LabelWidget(
                  text: prayerTime,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.darkBlue,
                  textAlign: TextAlign.left,
                ),
              ),
              //40.horizontalSpace,
              LabelWidget(
                text: arabicPrayerTime,
                fontSize: 16.sp,
                fontFamily: urdu,
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

class CustomRadioWidget extends StatelessWidget {
  final String text;
  final bool isSelected;
  const CustomRadioWidget(
      {super.key, required this.text, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        RadioButtonWidget(
          selectedSvg: AppAssets.selectedSvg,
          unSelectedSvg: AppAssets.unSelectedSvg,
          isSelected: isSelected,
          onTap: () {},
        ),
        14.horizontalSpace,
        LabelWidget(
          text: text,
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          color: AppColors.darkBlue,
        ),
      ],
    );
  }
}

class CustomDropDown extends StatelessWidget {
  List<DropdownMenuItem<String>> dropdownItems;
  final double height;
  final double width;
  String selectedValue;
  Function(String?)? onChanged;
  CustomDropDown({
    super.key,
    required this.dropdownItems,
    required this.selectedValue,
    this.height = 30,
    this.width = 100,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width.w,
      height: height.h,
      //padding: EdgeInsets.symmetric(horizontal: 10.w),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: AppColors.greyColor.withOpacity(0.5))),
      child: DropdownButton(
          style: TextStyle(
            fontSize: 12.sp,
            color: AppColors.darkBlue,
            fontWeight: FontWeight.w500,
            fontFamily: regular,
          ),
          elevation: 16,
          underline: const SizedBox(),
          iconSize: 24.h,
          items: dropdownItems,
          value: selectedValue,
          icon: SvgPicture.asset(AppAssets.dropDownArrowSvg),
          onChanged: onChanged),
    );
  }
}

class OnboardingWidget extends StatelessWidget {
  final String title;
  final String subHeading;
  final bool enableSubWidget;
  var value;
  VoidCallback onTap;
  OnboardingWidget({super.key, required this.title, this.subHeading = '', this.enableSubWidget = false, this.value, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.only(left: 15.w, top: 15.h, bottom: 16.h, right: 15.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: LabelWidget(
                  text: title,
                  textAlign: TextAlign.left,
                  fontSize: 16.sp,
                  textHeight: 1.3.h,
                  fontWeight: FontWeight.w600,
                  color: AppColors.darkBlue,
                ),
              ),
              CustomCheckBox(
                value: value,
                onTap: onTap,
              ),
            ],
          ),
          enableSubWidget == true ? Padding(
            padding: EdgeInsets.only(top: 15.h),
            child: LabelWidget(
              text: subHeading,
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.greyColor,
              textAlign: TextAlign.left,
              textHeight: 1.3.h,
            ),
          ) : Container(),
        ],
      ),
    );
  }
}


class NavigatableRow extends StatelessWidget {
  final String img;
  final String title;
  final String arrowImg;
  final String? subHeading;
  final VoidCallback onTap;
  NavigatableRow({
    super.key,
    this.img = "",
    this.title = "",
    this.arrowImg = "assets/images/roundLeftArrow.svg",
    this.subHeading,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 17.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.r)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 26.w,
                  child: SvgPicture.asset(img, color: AppColors.greenColor)
                ),
                10.horizontalSpace,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LabelWidget(
                  text: title,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: AppColors.darkBlue,
                ),
                //3.verticalSpace,
                  subHeading != null ? LabelWidget(
                  text: subHeading!,
                  fontSize: 8.sp,
                  textHeight: 1.5.h,
                  fontWeight: FontWeight.w400,
                  color: Colors.black.withOpacity(0.5),
                ) : Container(),
                  ],
                ),
              ],
            ),
            SvgPicture.asset(arrowImg, height: 20.h),
          ],
        ),
      ),
    );
  }
}