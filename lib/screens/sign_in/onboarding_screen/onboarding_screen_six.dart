import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:ruhiyapp/controllers/onboarding_controller.dart';
import 'package:ruhiyapp/utils/app_colors.dart';
import 'package:ruhiyapp/utils/app_string.dart';
import 'package:ruhiyapp/utils/app_theme.dart';
import 'package:ruhiyapp/utils/routes.dart';
import 'package:ruhiyapp/widgets/custom_view.dart';
import 'package:ruhiyapp/widgets/label_widgets.dart';
import '../../../utils/app_assets.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_checkBox.dart';

class OnboardingScreenSix extends StatelessWidget {
  static const String id = "/OnboardingScreenSix";
  OnboardingScreenSix({super.key});

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
                    AppAssets.sixSvg,
                    height: 36.h,
                    width: 36.w,
                  ),
                  50.verticalSpace,
                  LabelWidget(
                    text: AppStrings.onboardingHeading6,
                    fontFamily: semiBold,
                    fontSize: 20.sp,
                    textHeight: 1.3.h,
                    fontWeight: FontWeight.w600,
                    color: AppColors.greenColor,
                  ),
                  18.verticalSpace,
                  Container(
                    padding: EdgeInsets.only(
                        left: 15.w, top: 15.h, bottom: 16.h, right: 15.w),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.r)),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            LabelWidget(
                              text: AppStrings.annualReminderToPayZakat,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.darkBlue,
                            ),
                            CustomCheckBox(
                              value: controller.anualZakatCheckBox.value,
                              onTap: (){
                                controller.anualZakatCheckBox.value = !controller.anualZakatCheckBox.value;
                              },
                            ),
                          ],
                        ),
                        17.verticalSpace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: LabelWidget(
                                text: AppStrings.zakatReminderBeforeRamadan,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColors.darkBlue,
                                textAlign: TextAlign.left,
                                textHeight: 1.3.h,
                              ),
                            ),
                            Flexible(
                                child: CustomDropDown(
                              dropdownItems: controller.zakatReminderDays,
                              selectedValue: controller.zakatReminderDaysForRamadan.value,
                              onChanged: (value) {
                                controller.zakatReminderDaysForRamadan.value = value!;
                                if (kDebugMode) {
                                  print(controller.zakatReminderDaysForRamadan.value);
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
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            LabelWidget(
                              text: AppStrings.setGoalForHajj,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w600,
                              color: AppColors.darkBlue,
                            ),
                            CustomCheckBox(
                              value: controller.setGoalForHajjCheckBox.value,
                              onTap: (){
                                controller.setGoalForHajjCheckBox.value = !controller.setGoalForHajjCheckBox.value;
                              },
                            ),
                          ],
                        ),
                        17.verticalSpace,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: LabelWidget(
                                text: AppStrings.selectHajjYear,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w500,
                                color: AppColors.darkBlue,
                                textAlign: TextAlign.left,
                                textHeight: 1.3.h,
                              ),
                            ),
                            Flexible(
                                child: CustomDropDown(
                                  width: 80.w,
                              dropdownItems: controller.hajjYear,
                              selectedValue: controller.selectedYearForHajj.value,
                              onChanged: (value) {
                                controller.selectedYearForHajj.value = value!;
                                if (kDebugMode) {
                                  print(controller.selectedYearForHajj.value);
                                }
                              },
                            )),
                          ],
                        ),
                      ],
                    ),
                  ),
                  10.verticalSpace,
                  OnboardingWidget(
                    title: AppStrings.remindersOfImportantDates, 
                    enableSubWidget: true, 
                    subHeading: "(e.g., Ramadan, Eid ul-Fitr, Eid ul-Adha, Day of Arafah)​",
                    value: controller.remindersOfImportantDatesCheckBox.value,
                    onTap: (){
                      controller.remindersOfImportantDatesCheckBox.value = !controller.remindersOfImportantDatesCheckBox.value;
                    },
                  ),
                  10.verticalSpace,
                  OnboardingWidget(
                    title: AppStrings.refresherContentOnThe6ArticlesOfFaith, 
                    enableSubWidget: false, 
                    value: controller.refresherContentCheckBox.value,
                    onTap: (){
                      controller.refresherContentCheckBox.value = !controller.refresherContentCheckBox.value;
                    },
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
              Get.toNamed(Routes.getHome());
            },
            buttonTitle: AppStrings.next,
            buttonWidth: 185.w,
          ),
        )
      ],
    );
  }
}
