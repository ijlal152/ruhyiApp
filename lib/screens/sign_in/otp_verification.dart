import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:ruhiyapp/utils/app_colors.dart';
import 'package:ruhiyapp/utils/app_string.dart';
import 'package:ruhiyapp/utils/app_theme.dart';
import 'package:ruhiyapp/utils/routes.dart';
import 'package:ruhiyapp/widgets/custom_button.dart';
import 'package:ruhiyapp/widgets/label_widgets.dart';
import 'package:ruhiyapp/widgets/textbutton.dart';

import '../../utils/app_assets.dart';

class OtpVerfication extends StatelessWidget {
  static const String id = "/OtpVerfication";
  const OtpVerfication({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: Get.width,
        height: Get.height,
        padding: EdgeInsets.only(top: 60.h, left: 40.w, right: 40.w),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppAssets.backGround), fit: BoxFit.fill)),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  AppAssets.appTitleSplashImage,
                  height: 100.h,
                  width: 100.w,
                ),
                15.verticalSpace,
                LabelWidget(
                  text: AppStrings.youPersonalisedMuslimGuide,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
                15.verticalSpace,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.w),
                  child: LabelWidget(
                    text: AppStrings.pleaseEnterOneTimePasscode,
                    fontSize: 17.sp,
                    textHeight: 1.3.h,
                    fontWeight: FontWeight.w600,
                    color: AppColors.greenColor,
                  ),
                ),
                17.verticalSpace,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Text.rich(
                    TextSpan(
                        text: AppStrings.yourOneTimePasscodeHasBeenSent,
                        style: TextStyle(
                            color: AppColors.darkBlue, fontSize: 12.sp),
                        children: [
                          TextSpan(
                              text: AppStrings.email,
                              style: TextStyle(
                                  color: AppColors.greenColor,
                                  fontSize: 12.sp,
                                  fontFamily: semiBold,
                                  fontWeight: FontWeight.w600)),
                        ]),
                    textAlign: TextAlign.center,
                  ),
                ),
                30.verticalSpace,
                Align(
                  alignment: Alignment.bottomLeft,
                  child: LabelWidget(
                    text: AppStrings.enterCode,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                ),
                7.verticalSpace,
                PinCodeTextField(
                  appContext: context,
                  length: 4,
                  obscureText: false,
                  autoFocus: true,
                  animationType: AnimationType.none,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.digitsOnly,
                  ],
                  onChanged: (_){},
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(10.r),
                    fieldHeight: 50.h,
                    fieldWidth: 50.w,
                    activeFillColor: Colors.white,
                    inactiveColor: AppColors.greyColor,
                    inactiveFillColor: Colors.white,
                    selectedFillColor: Colors.white,
                  ),
                  animationDuration: const Duration(milliseconds: 300),
                  enableActiveFill: true,
                  onCompleted: (value){

                  },
                ),
                40.verticalSpace,

                CustomButton(
                  buttonTitle: AppStrings.confirm,
                    onTap: (){
                      Get.toNamed(Routes.getOnboardingScreenOne());
                    }
                ),
                15.verticalSpace,

                const CustomTextButton(buttonTitle: AppStrings.resendCode, titleColor: AppColors.greyColor,)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
