import 'package:english_explorer/onboarding/onboarding_screen_1.dart';
import 'package:english_explorer/onboarding/onboarding_screen_2.dart';
import 'package:english_explorer/onboarding/onboarding_screen_3.dart';
import 'package:english_explorer/welocme_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String onboarding1 = '/onboarding1';
  static const String onboarding2 = '/onboarding2';
  static const String onboarding3 = '/onboarding3';
  static const String home = '/WelcomeScreen';

  static final Map<String, WidgetBuilder> routes = {
    onboarding1: (context) => OnboardingScreen1(),
    onboarding2: (context) => OnboardingScreen2(),
    onboarding3: (context) => OnboardingScreen3(),
    home: (context) => WelocmeScreen(),
  };
}
