import 'package:flutter/material.dart';

import 'core/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lexi Go',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFFF5F5F5),
      ),
      initialRoute: AppRoutes.onboarding1,
      routes: AppRoutes.routes,
    );
  }
}
