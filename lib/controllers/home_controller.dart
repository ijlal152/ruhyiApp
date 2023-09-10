import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hijri/hijri_calendar.dart';
import 'package:ruhiyapp/utils/app_assets.dart';
import 'package:ruhiyapp/utils/app_string.dart';

class HomeController extends GetxController{
  
  var selectedIndexForNavBar = 0.obs;

  final today = HijriCalendar.now();
  var hijriDate;

  void getHijiDate(){
    today.toFormat("dd MMMM yyyy");
    hijriDate = today.toFormat("dd MMMM yyyy");
    update();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    getHijiDate();
    super.onInit();
  }
  

  final navBarItems = [
    BottomNavigationBarItem(
      icon: SvgPicture.asset(AppAssets.homeSvg),
      activeIcon: SvgPicture.asset(AppAssets.homeSelected),
      label: AppStrings.home,
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(AppAssets.handsSvg),
      activeIcon: SvgPicture.asset(AppAssets.handSelected),
      label: AppStrings.prayer,
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(AppAssets.bookSvg),
      activeIcon: SvgPicture.asset(AppAssets.boolSelected),
      label: AppStrings.quran,
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(AppAssets.watchSvg),
      activeIcon: SvgPicture.asset(AppAssets.watchSelected),
      label: AppStrings.tracker,
    ),
    BottomNavigationBarItem(
      icon: SvgPicture.asset(AppAssets.buldSvg),
      activeIcon: SvgPicture.asset(AppAssets.bulbSelected),
      label: AppStrings.ilm,
    ),
  ];

  var prayerList = [
    AppStrings.fajarPrayer,
    AppStrings.dhuhrPrayer,
    AppStrings.asrPrayer,
    AppStrings.maghribPrayer,
    AppStrings.ishaPrayer
  ];
}