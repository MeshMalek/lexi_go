import 'package:flutter/material.dart';

class FamilyMembersScreen extends StatelessWidget {
  final VoidCallback onBack;

  const FamilyMembersScreen({super.key, required this.onBack});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Family Members'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: onBack,
        ),
      ),
      body: const Center(
        child: Text('Family Members Screen'),
      ),
    );
  }
}
