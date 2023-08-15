import 'package:get/get.dart';

import '../utils/app_assets.dart';
import '../utils/app_string.dart';
class SettingsController extends GetxController{

  var settingsObjects = [
    {
      "img" : AppAssets.user_circleSvg,
      "title" : AppStrings.profile,
      "icon" : AppAssets.roundLeftArrow,
      "subHeading" : null,
    },
    {
      "img" : AppAssets.notifications_bell,
      "title" : AppStrings.notifications,
      "icon" : AppAssets.roundLeftArrow,
      "subHeading" : null,
    },
    {
      "img" : AppAssets.handsSvg,
      "title" : AppStrings.settings,
      "icon" : AppAssets.roundLeftArrow,
      "subHeading" : null,
    },
    {
      "img" : AppAssets.bookSvg,
      "title" : AppStrings.quranSettings,
      "icon" : AppAssets.roundLeftArrow,
      "subHeading" : null,
    },
    {
      "img" : AppAssets.starSvg,
      "title" : AppStrings.selectFiqh,
      "icon" : AppAssets.roundLeftArrow,
      "subHeading" : AppStrings.thisIsOnlyForZakatCalculations,
    },
  ];

}