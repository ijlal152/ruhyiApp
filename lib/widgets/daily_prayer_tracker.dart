import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ruhiyapp/utils/app_colors.dart';

class DailyPrayerTracker extends StatelessWidget {
  final String prayer;
  final int length;
  const DailyPrayerTracker({super.key, required this.prayer, this.length = 5});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(length, (index) => Container(
        height: 56.h,
        width: 60.w,
        decoration: const BoxDecoration(
          color: AppColors.bgColor,
        ),
      )),
    );
  }
}
