import 'package:flutter/material.dart';

// --- ROUTES ---
import 'package:app/theme/routing/routing_constants.dart';
import 'package:app/screens/initials/index.dart';

// auth
import 'package:app/screens/auth/login/index.dart';
import 'package:app/screens/auth/signup/index.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch(settings.name) {
    case initialScreenRoute:
      return MaterialPageRoute(builder: (context) => const InitialScreen());

    case loginScreenRoute:
      return MaterialPageRoute(builder: (context) => const LoginScreen());

    case signupScreenRoute:
      return MaterialPageRoute(builder: (context) => const SignupScreen());

    default:
      return MaterialPageRoute(builder: (context) => const InitialScreen());
  }
}