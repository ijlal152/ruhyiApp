import 'package:get/get.dart';
import 'package:ruhiyapp/utils/app_assets.dart';
import 'package:ruhiyapp/utils/app_string.dart';

class IlmCenterController extends GetxController{
  
  var pillarsOfIslamName = [
    AppStrings.shahadah,
    AppStrings.salah,
    AppStrings.zakat,
    AppStrings.sawm,
    AppStrings.hajj,
    AppStrings.struggle,
  ];
  var pillarOfIslamSvg = [
    AppAssets.shahadaSvg,
    AppAssets.salahSvg,
    AppAssets.zakatSvg,
    AppAssets.sawmSvg,
    AppAssets.kabahSvg,
    AppAssets.struggleSvg,
  ];

  var sixArticlesOfFaithName = [
    AppStrings.oneGod,
    AppStrings.angels,
    AppStrings.prophetBelief,
    AppStrings.judgmentDay,
    AppStrings.fate,
    AppStrings.hollyBooks,
  ];
  var sixArticlesOfFaithSvg = [
    AppAssets.AllahNameSvg,
    AppAssets.angelNameSvg,
    AppAssets.MuhammadNameSvg,
    AppAssets.judgmentDaySvg,
    AppAssets.fateSvg,
    AppAssets.quranSvg,
  ];
}