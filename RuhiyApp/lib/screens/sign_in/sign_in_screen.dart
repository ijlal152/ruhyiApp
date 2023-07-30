import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:ruhiyapp/controllers/signIn_controller.dart';
import 'package:ruhiyapp/utils/app_assets.dart';
import 'package:ruhiyapp/utils/app_colors.dart';
import 'package:ruhiyapp/utils/app_theme.dart';
import 'package:ruhiyapp/widgets/custom_button.dart';
import 'package:ruhiyapp/widgets/custom_textformfield.dart';

import '../../utils/app_string.dart';
import '../../utils/routes.dart';
import '../../widgets/label_widgets.dart';

class SignInScreen extends StatelessWidget {
  static const String id = "/SignInScreen";
  SignInScreen({super.key});

  var controller = Get.put(SignInController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: Get.height,
        width: Get.width,
        padding: EdgeInsets.only(top: 60.h, left: 40.w, right: 40.w),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.backGround),
            fit: BoxFit.fill
          )
        ),
        child: Stack(
          children: [
            Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(AppAssets.appTitleSplashImage, height: 100.h, width: 100.w,),
            15.verticalSpace,
            LabelWidget(
              text: AppStrings.youPersonalisedMuslimGuide,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
            55.verticalSpace,
            Text.rich(TextSpan(
              text: AppStrings.welcomeTo,
              style: TextStyle(
                color: AppColors.greenColor,
                fontFamily: semiBold,
                fontWeight: FontWeight.w700,
                fontSize: 20.sp
              ),
              children: [
                TextSpan(text: AppStrings.ruhiyee, style: TextStyle(
                fontFamily: bold,
                fontWeight: FontWeight.w800,
                fontSize: 20.sp
                ))
              ]
            ),
          ),
          20.verticalSpace,
          Align(
            alignment: Alignment.topLeft,
            child: LabelWidget(
              text: AppStrings.emailAddress,
              color: Colors.black,
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          7.verticalSpace,
          const CustomTextFormField(
            hintText: AppStrings.emailAddress,
          ),
          30.verticalSpace,
          CustomButton(
            buttonTitle: AppStrings.signIn,
            enableShadow: false,
            onTap: (){}
          ),

          
          ],
        ),
        Positioned(
          bottom: 30.h,
          left: 0.w,
          right: 0.w,
          child: Column(
          children: [
            InkWell(
            onTap: (){
              Get.toNamed(Routes.getRegistrationFormForSignIn());
            },
            child: Text.rich(
              TextSpan(
                text: AppStrings.dontHaveAnAccount,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400,
                  color: AppColors.greyColor
                ),
                children: const [
                  TextSpan(text: AppStrings.registerHere, style: TextStyle(
                    fontFamily: semiBold,
                    fontWeight: FontWeight.w700,
                  ))
                ]
              )
            ),
          ),

          20.verticalSpace,
          CustomButton(
            buttonTitle: AppStrings.continueAsGuest,
            enableShadow: false,
            bgColor: Colors.white,
            titleColor: AppColors.greenColor,
            onTap: (){}
          ),
          ],
        ))
          ],
        )
      ),
    );
  }
}