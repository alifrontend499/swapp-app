import 'package:flutter/material.dart';

// --- ROUTES ---
import 'package:app/theme/routing/routing_constants.dart';
import 'package:app/screens/initials/index.dart';

// auth
import 'package:app/screens/auth/login/index.dart';
import 'package:app/screens/auth/forgot_password/index.dart';
import 'package:app/screens/auth/signup/steps/signupStepOne.dart';
import 'package:app/screens/auth/signup/steps/signupStepTwo.dart';
import 'package:app/screens/auth/signup/steps/signupStepFive.dart';
import 'package:app/screens/auth/signup/steps/signupStepFour.dart';
import 'package:app/screens/auth/signup/steps/signupStepThree.dart';

// content | messages
import 'package:app/screens/content/messagesContent/messagesView/messagesView.dart';
import 'package:app/screens/content/messagesContent/userProfile/userProfile.dart';

// vendor
import 'package:app/screens/vendorView/index.dart';

// content main
import 'package:app/screens/content/index.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch(settings.name) {
    case initialScreenRoute:
      return MaterialPageRoute(builder: (context) => const InitialScreen());

    case loginScreenRoute:
      return MaterialPageRoute(builder: (context) => const LoginScreen());

    case forgotPasswordScreenRoute:
      return MaterialPageRoute(builder: (context) => const ForgotPasswordScreen());

    case signupScreenRouteStep1:
      return MaterialPageRoute(builder: (context) => const SignupStepOneScreen());

    case signupScreenRouteStep2:
      return MaterialPageRoute(builder: (context) => const SignupStepTwoScreen());

    case signupScreenRouteStep3:
      return MaterialPageRoute(builder: (context) => const SignupStepThreeScreen());

    case signupScreenRouteStep4:
      return MaterialPageRoute(builder: (context) => const SignupStepFourScreen());

    case signupScreenRouteStep5:
      return MaterialPageRoute(builder: (context) => const SignupStepFiveScreen());

    case contentMainScreenRoute:
      return MaterialPageRoute(builder: (context) => const ContentMainScreen());

    case messagesViewScreenRoute:
      return MaterialPageRoute(builder: (context) => const MessagesViewScreen());

    case userProfileScreenRoute:
      return MaterialPageRoute(builder: (context) => const UserProfileScreen());

    case vendorViewScreenRoute:
      return MaterialPageRoute(builder: (context) => const VendorViewScreen());

    default:
      return MaterialPageRoute(builder: (context) => const InitialScreen());
  }
}