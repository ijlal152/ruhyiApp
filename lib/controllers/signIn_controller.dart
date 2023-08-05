import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInController extends GetxController{

  String genderType = "none";

  final emailController = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final dateOfBirthController = TextEditingController();


  selectGender(String selectedGender){
    genderType = selectedGender;
    update();
  }

  @override
  void onClose() {
    emailController.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    dateOfBirthController.dispose();
    super.onClose();
  }
}