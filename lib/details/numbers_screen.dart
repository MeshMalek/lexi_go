import 'package:flutter/material.dart';

class NumbersScreen extends StatelessWidget {
  final VoidCallback onBack;

  const NumbersScreen({super.key, required this.onBack});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Numbers'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: onBack,
        ),
      ),
      body: const Center(child: Text('Numbers Screen')),
    );
  }
}
