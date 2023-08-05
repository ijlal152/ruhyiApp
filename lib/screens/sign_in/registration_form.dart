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
    return GetBuilder<SignInController>(
        builder: (signInController){
          return Stack(
            children: <Widget>[
              Image.asset(
                AppAssets.backGround,
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.fill,
              ),

              Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          padding: EdgeInsets.only(top: 100.h, left: 40.w, right: 40.w),
          child: SingleChildScrollView(
            child: Column(
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

                Form(child: Column(
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
                    CustomTextFormField(
                      hintText: AppStrings.firstName,
                      controller: controller.firstNameController,
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
                    CustomTextFormField(
                      hintText: AppStrings.lastName,
                      controller: controller.lastNameController,
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
                    CustomTextFormField(
                      hintText: AppStrings.emailAddress,
                      controller: controller.emailController,
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
                    CustomTextFormField(
                      hintText: AppStrings.dateOfBirth,
                      controller: controller.dateOfBirthController,
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
                                isSelected: signInController.genderType ==
                                    GenderType.Male.name,
                                onTap: () {
                                  signInController
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
                                isSelected: signInController.genderType ==
                                    GenderType.Female.name,
                                onTap: () {
                                  signInController
                                      .selectGender(GenderType.Female.name);
                                  print(signInController.genderType);
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
                ))

              ],
            ),
          ),
        ),
      ),

              Positioned(
                left: 40.w,
                right: 40.w,
                bottom: 30.h,
                child: CustomButton(
                    buttonTitle: AppStrings.register,
                    enableShadow: false,
                    onTap: (){
                      Get.toNamed(Routes.getSignUpOtpVerification());
                    }
                ),
              ),
            ],
          );
        }
    );
  }
}
