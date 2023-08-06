import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:ruhiyapp/controllers/onboarding_controller.dart';
import 'package:ruhiyapp/utils/app_colors.dart';
import 'package:ruhiyapp/utils/app_string.dart';
import 'package:ruhiyapp/utils/app_theme.dart';
import 'package:ruhiyapp/widgets/custom_view.dart';
import 'package:ruhiyapp/widgets/label_widgets.dart';
import '../../../utils/app_assets.dart';
import '../../../utils/routes.dart';
import '../../../widgets/custom_button.dart';

class OnboardingScreenFive extends StatelessWidget {
  static const String id = "/OnboardingScreenFive";
  OnboardingScreenFive({super.key});

  var controller = Get.find<OnBoardingController>();

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
          body: Obx(
            () => Container(
              width: Get.width,
              height: Get.height,
              padding: EdgeInsets.only(top: 60.h, left: 30.w, right: 30.w),
              child: Column(
                children: [
                  SvgPicture.asset(
                    AppAssets.fiveSvg,
                    height: 36.h,
                    width: 36.w,
                  ),
                  50.verticalSpace,
                  LabelWidget(
                    text: AppStrings.onboardingHeading5,
                    fontFamily: semiBold,
                    fontSize: 20.sp,
                    textHeight: 1.3.h,
                    fontWeight: FontWeight.w600,
                    color: AppColors.greenColor,
                  ),
                  18.verticalSpace,
                  Container(
                    padding: EdgeInsets.only(
                        left: 15.w, top: 10.h, bottom: 16.h, right: 15.w),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.r)),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            LabelWidget(
                              text: AppStrings.yesRemindMe,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors.darkBlue,
                            ),
                            SvgPicture.asset(AppAssets.selectedSvg)
                          ],
                        ),
                        17.verticalSpace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            LabelWidget(
                              text: AppStrings.timeOfDay,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors.darkBlue,
                            ),
                            Flexible(
                                child: CustomDropDown(
                              dropdownItems: controller.dropdownItems,
                              selectedValue: controller.selectedValue.value,
                              onChanged: (value) {
                                controller.selectedValue.value = value!;
                                if (kDebugMode) {
                                  print(controller.selectedValue.value);
                                }
                              },
                            )),
                          ],
                        ),
                      ],
                    ),
                  ),
                  10.verticalSpace,
                  Container(
                    padding: EdgeInsets.only(
                        left: 15.w, top: 15.h, bottom: 16.h, right: 15.w),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.r)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            LabelWidget(
                              text: AppStrings.duration,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors.darkBlue,
                            ),
                            LabelWidget(
                              text: "15 min",
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.darkBlue,
                            ),
                          ],
                        ),
                        15.verticalSpace,
                        LabelWidget(
                          text: AppStrings.youGetNotifiedWhenTimeIsOver,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                          color: AppColors.greyColor,
                          textAlign: TextAlign.left,
                        ),
                        15.verticalSpace,
                        SvgPicture.asset(AppAssets.sliderSvg),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 60.h,
          left: 0.w,
          right: 0.w,
          child: CustomButton(
            onTap: () {
              Get.toNamed(Routes.getOnboardingScreenSix());
            },
            buttonTitle: AppStrings.next,
            buttonWidth: 185.w,
          ),
        )
      ],
    );
  }
}
