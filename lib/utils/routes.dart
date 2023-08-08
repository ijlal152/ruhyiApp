import 'package:get/route_manager.dart';
import 'package:ruhiyapp/screens/home/home.dart';
import 'package:ruhiyapp/screens/sign_in/onboarding_screen/onboarding_screen_five.dart';
import 'package:ruhiyapp/screens/sign_in/onboarding_screen/onboarding_screen_four.dart';
import 'package:ruhiyapp/screens/sign_in/onboarding_screen/onboarding_screen_three.dart';
import 'package:ruhiyapp/screens/sign_in/sign_in_screen.dart';
import 'package:ruhiyapp/screens/splash_screen.dart';

import '../screens/settings_screen/settings.dart';
import '../screens/sign_in/onboarding_screen/onboarding_screen_one.dart';
import '../screens/sign_in/onboarding_screen/onboarding_screen_six.dart';
import '../screens/sign_in/onboarding_screen/onboarding_screen_two.dart';
import '../screens/sign_in/otp_verification.dart';
import '../screens/sign_in/registration_form.dart';

class Routes{
  static String getSplashPage() => SplashScreen.id;
  static String getSignInScreen() => SignInScreen.id;
  static String getRegistrationFormForSignIn() => RegistrationFormSignUp.id;
  static String getSignUpOtpVerification() => OtpVerfication.id;
  static String getOnboardingScreenOne() => OnboardingScreenOne.id;
  static String getOnboardingScreenTwo() => OnboardingScreenTwo.id;
  static String getOnboardingScreenThree() => OnboardingScreenThree.id;
  static String getOnboardingScreenFour() => OnboardingScreenFour.id;
  static String getOnboardingScreenFive() => OnboardingScreenFive.id;
  static String getOnboardingScreenSix() => OnboardingScreenSix.id;
  static String getHome() => Home.id;
  static String getSettingsScreen() => SettingsScreen.id;

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
    GetPage(
        name: OnboardingScreenOne.id,
        page: () => OnboardingScreenOne(),
        transition: Transition.cupertino
    ),
    GetPage(
        name: OnboardingScreenTwo.id,
        page: () => OnboardingScreenTwo(),
        transition: Transition.cupertino
    ),
    GetPage(
        name: OnboardingScreenThree.id,
        page: () => OnboardingScreenThree(),
        transition: Transition.cupertino
    ),
    GetPage(
        name: OnboardingScreenFour.id,
        page: () => OnboardingScreenFour(),
        transition: Transition.cupertino
    ),
    GetPage(
        name: OnboardingScreenFive.id,
        page: () => OnboardingScreenFive(),
        transition: Transition.cupertino
    ),
    GetPage(
        name: OnboardingScreenSix.id,
        page: () => OnboardingScreenSix(),
        transition: Transition.cupertino
    ),
    GetPage(
        name: Home.id,
        page: () => Home(),
        transition: Transition.cupertino
    ),
    GetPage(
        name: SettingsScreen.id,
        page: () => SettingsScreen(),
        transition: Transition.cupertino
    ),

  ];
}