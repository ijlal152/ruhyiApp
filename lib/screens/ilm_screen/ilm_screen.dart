import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:ruhiyapp/controllers/ilm_center_controller.dart';
import 'package:ruhiyapp/utils/app_colors.dart';
import 'package:ruhiyapp/utils/app_theme.dart';
import 'package:ruhiyapp/widgets/appBar.dart';
import 'package:ruhiyapp/widgets/label_widgets.dart';

import '../../utils/app_assets.dart';
import '../../utils/app_string.dart';

class IlmScreen extends StatelessWidget {
  IlmScreen({super.key});

  var controller = Get.put(IlmCenterController());

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
                image: AssetImage(AppAssets.backGround3),
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
            20.verticalSpace,
            Flexible(
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: 6,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(  
                    crossAxisCount: 3,  
                    crossAxisSpacing: 11,  
                    mainAxisSpacing: 20.0  
                ), 
                itemBuilder: (BuildContext context, int index){  
                  return pillarOfIslamAndAtriclesOfFaith(
                    title: controller.pillarsOfIslamName[index].toString(), 
                    svg: controller.pillarOfIslamSvg[index].toString(),
                  );  
                },  
              ),
            ),
            30.verticalSpace,

            LabelWidget(
              text: AppStrings.sixArticlesOfFaith,
              fontSize: 14.sp,
              fontFamily: semiBold,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),

            15.verticalSpace,

            Flexible(
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: 6,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(  
                    crossAxisCount: 3,  
                    crossAxisSpacing: 11,  
                    mainAxisSpacing: 20.0,
                ), 
                itemBuilder: (BuildContext context, int index){  
                  return pillarOfIslamAndAtriclesOfFaith(
                    title: controller.sixArticlesOfFaithName[index].toString(), 
                    svg: controller.sixArticlesOfFaithSvg[index].toString(),
                  );  
                },  
              ),
            ),



          ],
        ),
      ),
    );
  }
  Widget pillarOfIslamAndAtriclesOfFaith({required title, required svg}){
    return Container(
      decoration: BoxDecoration(
        color: AppColors.bgColor,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(svg),
          10.verticalSpace,
          LabelWidget(
            text: title,
            fontSize: 12.sp,
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ],
      ),
    );
  }
}


