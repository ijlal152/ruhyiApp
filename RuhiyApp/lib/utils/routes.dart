import 'package:get/route_manager.dart';
import 'package:ruhiyapp/screens/sign_in/sign_in_screen.dart';
import 'package:ruhiyapp/screens/splash_screen.dart';

import '../screens/sign_in/otp_verification.dart';
import '../screens/sign_in/registration_form.dart';

class Routes{
  static String getSplashPage() => SplashScreen.id;
  static String getSignInScreen() => SignInScreen.id;
  static String getRegistrationFormForSignIn() => RegistrationFormSignUp.id;
  static String getSignUpOtpVerification() => OtpVerfication.id;



  static List<GetPage> routeMap = [
    GetPage(
      name: SplashScreen.id, 
      page: () => SplashScreen(),
      transition: Transition.cupertino
    ),
    GetPage(
      name: SignInScreen.id, 
      page: () => SignInScreen(),
      transition: Transition.cupertino
    ),
    GetPage(
      name: RegistrationFormSignUp.id, 
      page: () => RegistrationFormSignUp(),
      transition: Transition.cupertino
    ),
    GetPage(
        name: OtpVerfication.id,
        page: () => OtpVerfication(),
        transition: Transition.cupertino
    ),
  ];
}