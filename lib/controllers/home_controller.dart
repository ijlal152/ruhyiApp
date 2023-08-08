import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:ruhiyapp/utils/app_assets.dart';
import 'package:ruhiyapp/utils/app_string.dart';

class HomeController extends GetxController{
  
  var selectedIndexForNavBar = 0.obs;

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



}