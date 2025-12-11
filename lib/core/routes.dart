import 'package:english_explorer/onboarding/onboarding_screen_1.dart';
import 'package:english_explorer/onboarding/onboarding_screen_2.dart';
import 'package:english_explorer/onboarding/onboarding_screen_3.dart';
import 'package:english_explorer/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String onboarding1 = '/onboarding1';
  static const String onboarding2 = '/onboarding2';
  static const String onboarding3 = '/onboarding3';
  static const String welcome_screen = '/welcome-screen';

  static final Map<String, WidgetBuilder> routes = {
    onboarding1: (context) => OnboardingScreen1(),
    onboarding2: (context) => OnboardingScreen2(),
    onboarding3: (context) => OnboardingScreen3(),
    welcome_screen: (context) => WelcomeScreen(),
  };
}
