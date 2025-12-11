import 'package:flutter/material.dart';

import '../core/constants.dart';
import '../core/routes.dart';
import '../gen/assets.gen.dart';

class OnboardingScreen2 extends StatefulWidget {
  const OnboardingScreen2({super.key});

  @override
  State<OnboardingScreen2> createState() => _OnboardingScreen2State();
}

class _OnboardingScreen2State extends State<OnboardingScreen2> {
  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Assets.images.onboarding2.image(
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const SizedBox(height: 24),
                    Text(
                      title[index],
                      style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff0D1C12),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      description[index],
                      style: const TextStyle(
                        fontSize: 20,
                        color: Color(0xff0D1C12),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Container(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Assets.icons.interactive.image(width: 30, height: 30),
                          const SizedBox(width: 8),
                          const Text(
                            'Interactive Categories',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff0D1C12),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Assets.icons.progress.image(width: 30, height: 30),
                          const SizedBox(width: 8),
                          const Text(
                            'Progress Tracking',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff0D1C12),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Assets.icons.reward.image(width: 30, height: 30),
                          const SizedBox(width: 8),
                          const Text(
                            'Gamified Rewards',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xff0D1C12),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, AppRoutes.onboarding3);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff2BED7D),
                        minimumSize: const Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text(
                        'Next',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff0D1C12),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
