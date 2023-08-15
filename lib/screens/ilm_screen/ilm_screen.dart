import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ruhiyapp/utils/app_theme.dart';
import 'package:ruhiyapp/widgets/appBar.dart';
import 'package:ruhiyapp/widgets/label_widgets.dart';

import '../../utils/app_assets.dart';
import '../../utils/app_string.dart';

class IlmScreen extends StatelessWidget {
  const IlmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0.08.sh),
        child: MyAppBar(
            onTap1: (){},
          onTap2: (){},
          title: AppStrings.ilmCenter,
          enableSecondIcon: true,
        ),
      ),
      body: Container(
        height: Get.height,
        width: Get.width,
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppAssets.backGround2),
                fit: BoxFit.fill
            )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LabelWidget(
              text: AppStrings.fivePillarsOfIslam,
              fontSize: 14.sp,
              fontFamily: semiBold,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ],
        ),
      ),
    );
  }
}