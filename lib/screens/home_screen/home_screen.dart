import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ruhiyapp/widgets/daily_prayer_tracker.dart';

import '../../controllers/home_controller.dart';
import '../../utils/app_assets.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_theme.dart';
import '../../utils/routes.dart';
import '../../widgets/appBar.dart';
import '../../widgets/label_widgets.dart';


class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  var homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(0.08.sh),
          child: HomeAppBar(
            userName: "Ijlal Hussain",
            islamicDate: "20 Sha'ban 1444 AH",
            onTap1: () {},
            onTap2: () {
              Get.toNamed(Routes.getSettingsScreen());
            },
          )),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 20.w),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(12.r),
                      bottomRight: Radius.circular(12.r),
                    )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    nextPrayerWidget(), // shows next prayer timing
                    10.verticalSpace,
                    prayerTimingWidget(),  // shows prayer background banner
                    10.verticalSpace,
                    LabelWidget(
                      text: "Prayer Tracker",
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: AppColors.darkBlue,
                    ),
                    10.verticalSpace,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: List.generate(homeController.prayerList.length, (index) => Container(
                        height: 56.h,
                        width: 60.w,
                        decoration: BoxDecoration(
                          color: AppColors.bgColor,
                          borderRadius: BorderRadius.circular(10.r)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(AppAssets.selectedPrayer),
                            5.verticalSpace,
                            LabelWidget(
                              text: homeController.prayerList[index].toString(),
                              fontSize: 10.sp,
                              fontWeight: FontWeight.w500,
                              color: AppColors.greenColor,
                            ),
                          ],
                        ),
                      )),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget nextPrayerWidget(){
  return Container(
    padding: EdgeInsets.only(left: 13.w, top: 8.h, bottom: 8.h, right: 20.w),
    decoration: BoxDecoration(
      color: const Color.fromRGBO(37, 141, 104, 1),
      borderRadius: BorderRadius.circular(8.r),
      image: const DecorationImage(
        image: AssetImage(AppAssets.roundYellowContainerPng,),
        fit: BoxFit.cover
      )
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text.rich(TextSpan(
          text: "Next Prayer",
          style: TextStyle(
            fontSize: 12.sp,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
          children: [
            const TextSpan(
              text: " | "
            ),
            TextSpan(
              text: "Asr, 3:40 PM",
              style: TextStyle(
            fontSize: 12.sp,
            fontFamily: semiBold,
            color: Colors.white,
            fontWeight: FontWeight.w700
          ),
            )
          ]
        )),
        LabelWidget(
          text: "-0:30:32",
          fontSize: 14.sp,
          color: Colors.black,
          fontFamily: semiBold,
          textHeight: 1.3.h,
          fontWeight: FontWeight.w500,
        ),
    
    
      ],
    ),
    
  );
}


Widget prayerTimingWidget(){
  return Container(
    height: 160.h,
    padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12.r),
      image: const DecorationImage(
        image: AssetImage(AppAssets.fajarBG),
        fit: BoxFit.cover
      )
    ),
  );
}