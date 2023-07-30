import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ruhiyapp/utils/app_colors.dart';
import 'package:ruhiyapp/utils/app_string.dart';
import 'package:ruhiyapp/utils/enums.dart';
import 'package:ruhiyapp/utils/routes.dart';
import 'package:ruhiyapp/widgets/label_widgets.dart';
import 'package:ruhiyapp/widgets/radio_buttons.dart';

import '../../controllers/signIn_controller.dart';
import '../../utils/app_assets.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_textformfield.dart';

class RegistrationFormSignUp extends StatelessWidget {
  static const String id = "/RegistrationFormSignUp";
  RegistrationFormSignUp({super.key});

  var controller = Get.find<SignInController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
          height: double.infinity,
          width: double.infinity,
          padding: EdgeInsets.only(top: 100.h, left: 40.w, right: 40.w),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AppAssets.backGround), fit: BoxFit.fill)),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  LabelWidget(
                    text: AppStrings.pleaseAddYourDetailsToRegisterYourSelf,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                    textHeight: 1.3.h,
                    color: AppColors.greenColor,
                  ),
                  40.verticalSpace,
                  Form(
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: LabelWidget(
                              text: AppStrings.firstName,
                              color: Colors.black,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          7.verticalSpace,
                          const CustomTextFormField(
                            hintText: AppStrings.firstName,
                          ),
                          20.verticalSpace,
                          Align(
                            alignment: Alignment.topLeft,
                            child: LabelWidget(
                              text: AppStrings.lastName,
                              color: Colors.black,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          7.verticalSpace,
                          const CustomTextFormField(
                            hintText: AppStrings.lastName,
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
                          20.verticalSpace,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              LabelWidget(
                                text: AppStrings.dateOfBirth,
                                color: Colors.black,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                              ),
                              5.horizontalSpace,
                              LabelWidget(
                                text: "(${AppStrings.optional})",
                                color: AppColors.greyColor,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w500,
                              ),
                            ],
                          ),
                          7.verticalSpace,
                          const CustomTextFormField(
                            hintText: AppStrings.dateOfBirth,
                          ),
                          30.verticalSpace,
                          Align(
                            alignment: Alignment.topLeft,
                            child: LabelWidget(
                              text: AppStrings.gender,
                              color: Colors.black,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          20.verticalSpace,
                          Row(
                            children: [
                              Row(
                                children: [
                                  RadioButtonWidget(
                                      selectedSvg: AppAssets.selectedSvg,
                                      unSelectedSvg: AppAssets.unSelectedSvg,
                                      isSelected: controller.genderType ==
                                          GenderType.Male.name,
                                      onTap: () {
                                        controller
                                            .selectGender(GenderType.Male.name);
                                      }),
                                  15.horizontalSpace,
                                  LabelWidget(
                                    text: AppStrings.male,
                                    color: Colors.black,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ],
                              ),
                              35.horizontalSpace,
                              Row(
                                children: [
                                  RadioButtonWidget(
                                      selectedSvg: AppAssets.selectedSvg,
                                      unSelectedSvg: AppAssets.unSelectedSvg,
                                      isSelected: controller.genderType ==
                                          GenderType.Female.name,
                                      onTap: () {
                                        controller
                                            .selectGender(GenderType.Female.name);
                                      }),
                                  15.horizontalSpace,
                                  LabelWidget(
                                    text: AppStrings.female,
                                    color: Colors.black,
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      )),
                ],
              ),
              Positioned(
                bottom: 30.h,
                left: 0.w,
                right: 0.w,
                child: CustomButton(
                  buttonTitle: AppStrings.register,
                  enableShadow: false,
                  onTap: (){
                    Get.toNamed(Routes.getSignUpOtpVerification());
                  }
              ),)
            ],
          ),
          ),
    );
  }
}
