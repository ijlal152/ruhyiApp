import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../services/auth_services.dart';

class SignInController extends GetxController{

  // Auth Services Repository
  AuthServices authServices = AuthServices();

  String genderType = "none";
  final emailController = TextEditingController();
  final emailController2 = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final dateOfBirthController = TextEditingController();

  // form validation key
  final formKey = GlobalKey<FormState>();



  // update gender status like male / female
  selectGender(String selectedGender){
    genderType = selectedGender;
    update();
  }

  @override
  void onClose() {
    emailController.dispose();
    emailController2.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    dateOfBirthController.dispose();
    super.onClose();
  }
}