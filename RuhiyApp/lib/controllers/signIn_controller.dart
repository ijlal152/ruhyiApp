import 'package:get/get.dart';

class SignInController extends GetxController{

  String genderType = "none";

  selectGender(String selectedGender){
    genderType = selectedGender;
    update();
  }
}