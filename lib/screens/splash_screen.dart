import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ruhiyapp/utils/app_assets.dart';
import 'package:ruhiyapp/utils/app_string.dart';
import 'package:ruhiyapp/widgets/label_widgets.dart';

import '../utils/routes.dart';

class SplashScreen extends StatefulWidget {
  static const String id = "/SplashScreen";
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), (){
      Get.toNamed(Routes.getSignInScreen());
    });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.splashBackGround),
            fit: BoxFit.cover,
          )
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 100.h),
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(AppAssets.splashImage1, height: 325.h, width: 235,),
            100.verticalSpace,
            SvgPicture.asset(AppAssets.appTitleSplashImage, height: 130.h,),
            10.verticalSpace,
            LabelWidget(
              text: AppStrings.youPersonalisedMuslimGuide,
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
            ),
          ],
        ),
        ),
      ),
    );
  }
}