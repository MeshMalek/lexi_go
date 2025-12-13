import 'package:flutter/material.dart';

class ColorsScreen extends StatelessWidget {
  final VoidCallback onBack;

  const ColorsScreen({super.key, required this.onBack});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Colors'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: onBack,
        ),
      ),
      body: const Center(child: Text('Colors Screen')),
    );
  }
}
