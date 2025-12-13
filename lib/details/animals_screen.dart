import 'package:flutter/material.dart';

class AnimalsScreen extends StatelessWidget {
  final VoidCallback onBack;

  const AnimalsScreen({super.key, required this.onBack});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animals'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: onBack,
        ),
      ),
      body: const Center(child: Text('Animals Screen')),
    );
  }
}
