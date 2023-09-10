import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../services/auth_services.dart';

class SignInController extends GetxController{

  // Auth Services Repository
  AuthServices authServices = AuthServices();
  var isLoading = false.obs;

  String genderType = "none";
  final emailController = TextEditingController();
  final emailController2 = TextEditingController();
  final passwordCtrlForLogin = TextEditingController();
  final passwordCtrlForRegister = TextEditingController();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final dateOfBirthController = TextEditingController();

  // form validation key
  final formKey = GlobalKey<FormState>().obs;



  // update gender status like male / female
  selectGender(String selectedGender){
    genderType = selectedGender;
    update();
  }

  formValidation(){
    if(firstNameController.text.isEmail 
      || lastNameController.text.isEmpty 
      || emailController2.text.isEmpty
      || passwordCtrlForRegister.text.isEmpty
    ){
      return false;
    }else{
      return true;
    } 
  }

  Future registerUser(context)async{
    isLoading.value = true;
    update();
    authServices.singUpUser(
      firstName: firstNameController.text, 
      lastName: lastNameController.text, 
      emailAddress: emailController2.text, 
      password: passwordCtrlForRegister.text, 
      dateOfBirth: dateOfBirthController.text, 
      gender: genderType,
      context: context
    ).then((value) {
      firstNameController.clear();
      lastNameController.clear();
      emailController2.clear();
      passwordCtrlForRegister.clear();
      dateOfBirthController.clear();
      genderType = "none";
      update();
    });
      isLoading.value = false;
      update();
  }



  @override
  void onClose() {
    emailController.dispose();
    emailController2.dispose();
    passwordCtrlForLogin.dispose();
    passwordCtrlForRegister.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    dateOfBirthController.dispose();
    super.onClose();
  }
}