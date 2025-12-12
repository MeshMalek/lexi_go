import 'package:english_explorer/main_screen.dart';
import 'package:english_explorer/onboarding/onboarding_screen_1.dart';
import 'package:english_explorer/onboarding/onboarding_screen_2.dart';
import 'package:english_explorer/onboarding/onboarding_screen_3.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String onboarding1 = '/onboarding1';
  static const String onboarding2 = '/onboarding2';
  static const String onboarding3 = '/onboarding3';
  static const String main_screen = '/main_screen';

  static final Map<String, WidgetBuilder> routes = {
    onboarding1: (context) => const OnboardingScreen1(),
    onboarding2: (context) => const OnboardingScreen2(),
    onboarding3: (context) => const OnboardingScreen3(),
    main_screen: (context) => const MainScreen(),
  };
}
