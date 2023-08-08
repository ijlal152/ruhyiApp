import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController{


final soundBtn = [
    "assets/images/sound-highSvg.svg",
    "assets/images/sound-offSvg.svg",
    "assets/images/sound-highSvg.svg",
    "assets/images/sound-offSvg.svg",
    "assets/images/sound-offSvg.svg",
  ];

  // English prayer name
  final engPrayerTime = [
    "Fajr", "Dhuhr", "Asr", "Maghrib", "Isha"
  ];

  // Arabic prayer name
  final arbPrayerTime = [
    "الفجر", "الظهر", "الظهر", "المغرب", "العشاء"
  ];

  final selectNamazIcon = [
    "assets/images/checkRadioButton.svg",
    "assets/images/checkRadioButton.svg",
    "assets/images/checkRadioButton.svg",
    "assets/images/unCheckedRadioButton.svg",
    "assets/images/unCheckedRadioButton.svg",
  ];

  List<DropdownMenuItem<String>> get dropdownItems{
  List<DropdownMenuItem<String>> menuItems = const[
    DropdownMenuItem(value: "01:00 PM", child: Text("01:00 PM")),
    DropdownMenuItem(value: "02:00 PM", child: Text("02:00 PM")),
    DropdownMenuItem(value: "03:00 PM", child: Text("03:00 PM")),
    DropdownMenuItem(value: "04:00 PM", child: Text("04:00 PM")),
  ];
  return menuItems;
}

List<DropdownMenuItem<String>> get zakatReminderDays{
  List<DropdownMenuItem<String>> menuItems = const[
    DropdownMenuItem(value: "5 Days", child: Text("5 Days")),
    DropdownMenuItem(value: "10 Days", child: Text("10 Days")),
    DropdownMenuItem(value: "15 Days", child: Text("15 Days")),
    DropdownMenuItem(value: "20 Days", child: Text("20 Days")),
  ];
  return menuItems;
}

List<DropdownMenuItem<String>> get hajjYear{
  List<DropdownMenuItem<String>> menuItems = const[
    DropdownMenuItem(value: "2024", child: Text("2024")),
    DropdownMenuItem(value: "2025", child: Text("2025")),
    DropdownMenuItem(value: "2026", child: Text("2026")),
    DropdownMenuItem(value: "2027", child: Text("2027")),
    DropdownMenuItem(value: "2028", child: Text("2028")),
    DropdownMenuItem(value: "2029", child: Text("2029")),
    DropdownMenuItem(value: "2030", child: Text("2030")),
  ];
  return menuItems;
}


  // dropdown values
  var selectedValue = "01:00 PM".obs;
  var zakatReminderDaysForRamadan = "15 Days".obs;
  var selectedYearForHajj = "2024".obs;

  // checkBox values
  var checkBox1 = true.obs;
  var anualZakatCheckBox = true.obs;
  var setGoalForHajjCheckBox = true.obs;
  var remindersOfImportantDatesCheckBox = true.obs;
  var refresherContentCheckBox = true.obs;

}