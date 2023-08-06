import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:ruhiyapp/controllers/onboarding_controller.dart';
import 'package:ruhiyapp/utils/app_colors.dart';
import 'package:ruhiyapp/utils/app_string.dart';
import 'package:ruhiyapp/utils/app_theme.dart';
import 'package:ruhiyapp/utils/routes.dart';
import 'package:ruhiyapp/widgets/custom_button.dart';
import 'package:ruhiyapp/widgets/label_widgets.dart';

import '../../../utils/app_assets.dart';
import '../../../widgets/custom_view.dart';

class OnboardingScreenFour extends StatelessWidget {
  static const String id = "/OnboardingScreenFour";
  const OnboardingScreenFour({super.key});
  

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingController>(
      builder: (controller){
        return Stack(
      //fit: StackFit.expand,
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
            padding: EdgeInsets.only(top: 60.h, left: 21.w, right: 21.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(AppAssets.fourSvg, height: 36.h, width: 36.w,),
                50.verticalSpace,
                LabelWidget(
                  text: AppStrings.onboardingHeading4,
                  fontFamily: semiBold,
                  textHeight: 1.3.h,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                  color: AppColors.greenColor,
                ),
                20.verticalSpace,
                Flexible(
                  child: ListView.separated(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    itemBuilder: (context, index){
                      return PrayerRow(
                        volumnBtn: controller.soundBtn[index].toString(), 
                        prayerTime: controller.engPrayerTime[index].toString(), 
                        arabicPrayerTime: controller.arbPrayerTime[index].toString(), 
                        icon: controller.selectNamazIcon[index].toString(), 
                        onTap: (){}
                      );
                    }, 
                    separatorBuilder: (context, index){
                      return 10.verticalSpace;
                    }, 
                    itemCount: controller.engPrayerTime.length
                  ),
                ),
                40.verticalSpace,
                const CustomRadioWidget(
                  text: AppStrings.linkToCalendar, 
                  isSelected: true
                ),

              ],
            ),
          ),
        ),
        Positioned(
          bottom: 60.h,
          left: 0.w,
          right: 0.w,
          child: CustomButton(
            onTap: (){
              Get.toNamed(Routes.getOnboardingScreenFive());
            },
            buttonTitle: AppStrings.next,
            buttonWidth: 185.w,
          ),
        )
      ],
    );
      }
    );
  }
}
