import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:ruhiyapp/utils/app_colors.dart';
import 'package:ruhiyapp/utils/app_string.dart';
import 'package:ruhiyapp/utils/app_theme.dart';
import 'package:ruhiyapp/widgets/label_widgets.dart';

import '../../../controllers/onboarding_controller.dart';
import '../../../utils/app_assets.dart';
import '../../../utils/routes.dart';
import '../../../widgets/custom_view.dart';

class OnboardingScreenOne extends StatelessWidget {
  static const String id = "/OnboardingScreenOne";
  OnboardingScreenOne({super.key});

  var controller = Get.put(OnBoardingController());

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
            padding: EdgeInsets.only(top: 60.h, left: 35.w, right: 35.w),
            child: Column(
              children: [
                SvgPicture.asset(AppAssets.oneSvg, height: 36.h, width: 36.w,),
                70.verticalSpace,
                LabelWidget(
                  text: AppStrings.onboardingHeading1,
                  fontFamily: semiBold,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                  color: AppColors.greenColor,
                ),
                30.verticalSpace,
                const CustomRows(text: AppStrings.onboardingText1,),
                10.verticalSpace,
                const CustomRows(text: AppStrings.onboardingText2,),
                10.verticalSpace,
                const CustomRows(text: AppStrings.onboardingText3,),
                10.verticalSpace,
                const CustomRows(text: AppStrings.onboardingText4,),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 60.h,
          left: 0.w,
          right: 0.w,
          child: AvatarAndButton(
            avatar: AppAssets.onboardingAvatar1Svg,
            onTap: (){
              Get.toNamed(Routes.getOnboardingScreenTwo());
            },
          ),
        )
      ],
    );
  }
}
