import 'package:english_explorer/gen/assets.gen.dart';
import 'package:english_explorer/models/category.dart';
import 'package:flutter/material.dart';

import 'widgets/category_card.dart';

class CategoriesScreen extends StatelessWidget {
  final VoidCallback onBack;

  const CategoriesScreen({super.key, required this.onBack});

  @override
  Widget build(BuildContext context) {
    final List<Category> categories = [
      Category(name: 'Numbers', image: Assets.icons.numbers.path),
      Category(name: 'Family Members', image: Assets.icons.familyMembers.path),
      Category(name: 'Colors', image: Assets.icons.colors.path),
      Category(name: 'Animals', image: Assets.icons.animals.path),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: onBack,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            const Text(
              'Choose a category',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: 2.5,
                ),
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return CategoryCard(category: categories[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
