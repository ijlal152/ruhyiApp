import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ruhiyapp/utils/app_assets.dart';
import 'package:ruhiyapp/utils/app_colors.dart';
import 'package:ruhiyapp/widgets/appBar.dart';
import 'package:ruhiyapp/widgets/custom_button.dart';
import 'package:ruhiyapp/widgets/custom_view.dart';
import 'package:ruhiyapp/widgets/label_widgets.dart';

import '../../controllers/settings_controller.dart';

class SettingsScreen extends StatelessWidget {
  static const String id = "/SettingsScreen";
  SettingsScreen({super.key});

  var controller = Get.find<SettingsController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(0.08.sh),
          child: MyAppBar(
            title: "Setting",
            onTap: (){}
          )
        ),
        body: Container(
          height: Get.height,
          width: Get.width,
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 15.h),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AppAssets.backGround2),
              fit: BoxFit.fill
            )
          ),
          child: Stack(
            children: [
              Column(
                children: [
                  ListView.separated(
                    shrinkWrap: true,
                    itemCount: controller.settingsObjects.length,
                    itemBuilder: (context, index){
                      var lst = controller.settingsObjects;
                      var subHeading = lst[index]["subHeading"];
                      return NavigatableRow(
                        onTap: (){},
                        img: lst[index]["img"].toString(),
                        title: lst[index]["title"].toString(),
                        subHeading: subHeading !=null ? lst[index]["subHeading"].toString() : null,
                      );
                    }, 
                    separatorBuilder: (context, index){
                      return 10.verticalSpace;
                    }, 
                  )
                ],
              ),
              Positioned(
                bottom: 30.h,
                left: 0.w,
                right: 0.w,
                child: Column(
                  children: [
                    LabelWidget(
                      text: "Delete Account",
                      fontSize: 14.sp,
                      color: AppColors.greenColor,
                      fontWeight: FontWeight.w500,
                    ),
                    20.verticalSpace,
                    CustomButton(
                      onTap: (){},
                      bgColor: Colors.white,
                      buttonTitle: "Logout",
                      titleColor: Colors.black,
                    )
                  ],
                )
              )
            ],
          ),

        ),
    );
  }
}

