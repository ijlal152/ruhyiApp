import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ruhiyapp/utils/app_colors.dart';
import 'package:ruhiyapp/utils/app_string.dart';
import 'package:ruhiyapp/utils/enums.dart';
import 'package:ruhiyapp/widgets/label_widgets.dart';
import 'package:ruhiyapp/widgets/radio_buttons.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../controllers/signIn_controller.dart';
import '../../utils/app_assets.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_textformfield.dart';

class RegistrationFormSignUp extends StatelessWidget {
  static const String id = "/RegistrationFormSignUp";
  RegistrationFormSignUp({super.key});

  var signInController = Get.find<SignInController>();
  late final FirebaseAuth auth;


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

              Form(
                key: signInController.formKey.value,
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
                  CustomTextFormField(
                    hintText: AppStrings.firstName,
                    controller: signInController.firstNameController,
                    validator: (value){
                      if(value!.isEmpty){
                        return null;
                      }
                    },
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
                    controller: signInController.lastNameController,
                    validator: (value){
                      if(value!.isEmpty){
                        return null;
                      }
                  
                    },
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
                    textInputType: TextInputType.emailAddress,
                    controller: signInController.emailController2,
                    validator: (value){
                      if(value!.isEmpty){
                        return null;
                      }
                    },
                  ),
                  20.verticalSpace,
                  Align(
                    alignment: Alignment.topLeft,
                    child: LabelWidget(
                      text: AppStrings.password,
                      color: Colors.black,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  7.verticalSpace,
                  CustomTextFormField(
                    hintText: "********",
                    textInputType: TextInputType.emailAddress,
                    controller: signInController.passwordCtrlForRegister,
                    validator: (value){
                      if(value!.isEmpty){
                        return null;
                      }
                    },
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
                    controller: signInController.dateOfBirthController,
                    validator: (value){
                      if(value!.isEmpty){
                        return null;
                      }
                    },
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
                                    print(signInController.genderType);
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
                  //30.verticalSpace,
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
                  isDisabled: signInController.formValidation() == true ? false : true, 
                  onTap: (){
                    if(signInController.formKey.value.currentState!.validate()){
                      signInController.formValidation();
                      signInController.registerUser(context);
                    }
                    //Get.toNamed(Routes.getSignUpOtpVerification());
                  }
              ),
            ),
          ],
          );
        }
    );
  }
}
