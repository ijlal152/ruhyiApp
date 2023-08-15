import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ruhiyapp/controllers/home_controller.dart';
import 'package:ruhiyapp/controllers/settings_controller.dart';
import 'package:ruhiyapp/screens/home_screen/home_screen.dart';
import 'package:ruhiyapp/screens/ilm_screen/ilm_screen.dart';
import 'package:ruhiyapp/screens/prayer_screen/prayer_screen.dart';
import 'package:ruhiyapp/screens/quran_screen/quran_screen.dart';
import 'package:ruhiyapp/screens/tracker_screen/tracker_screen.dart';
import 'package:ruhiyapp/utils/app_colors.dart';

class Home extends StatelessWidget {
  static const String id = "/Home";
  Home({super.key});

  var homeController = Get.put(HomeController());
  var settingsController = Get.put(SettingsController());

  var screens = [
    HomeScreen(),
    PrayerScreen(),
    QuranScreen(),
    TrackerScreen(),
    IlmScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: Column(
          children: [
            Expanded(child: screens.elementAt(homeController.selectedIndexForNavBar.value))
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: AppColors.greenColor,
          items: homeController.navBarItems,
          currentIndex: homeController.selectedIndexForNavBar.value,
          onTap: (value){
            homeController.selectedIndexForNavBar.value = value;
          },
          
          unselectedLabelStyle: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.bottomItemTextColor
          ),
          selectedLabelStyle: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w500,
            color: AppColors.greenColor,
          ),
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }
}

