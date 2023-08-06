import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:ruhiyapp/utils/app_colors.dart';
import 'package:ruhiyapp/utils/app_string.dart';
import 'package:ruhiyapp/utils/app_theme.dart';
import 'package:ruhiyapp/utils/routes.dart';
import 'package:ruhiyapp/widgets/label_widgets.dart';

import '../../../utils/app_assets.dart';
import '../../../widgets/custom_view.dart';

class OnboardingScreenTwo extends StatelessWidget {
  static const String id = "/OnboardingScreenTwo";
  const OnboardingScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Image.asset(
          AppAssets.backGround,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.fill,
        ),
        Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          body: Container(
            width: Get.width,
            height: Get.height,
            padding: EdgeInsets.only(top: 60.h, left: 30.w, right: 30.w),
            child: Column(
              children: [
                SvgPicture.asset(AppAssets.twoSvg, height: 36.h, width: 36.w,),
                50.verticalSpace,
                LabelWidget(
                  text: AppStrings.onboardingHeading2,
                  fontFamily: semiBold,
                  textHeight: 1.3.h,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.greenColor,
                ),
                30.verticalSpace,
                const CustomRows(text: AppStrings.onboardingText5,),
                10.verticalSpace,
                const CustomRows(text: AppStrings.onboardingText6,),
                10.verticalSpace,
                const CustomRows(text: AppStrings.onboardingText7,),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 60.h,
          left: 0.w,
          right: 0.w,
          child: AvatarAndButton(
            avatar: AppAssets.onboardingAvatar2Svg,
            onTap: (){
              Get.toNamed(Routes.getOnboardingScreenThree());
            },
          ),
        )
      ],
    );
  }
}
