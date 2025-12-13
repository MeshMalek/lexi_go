import 'package:english_explorer/details/animals_screen.dart';
import 'package:english_explorer/details/colors_screen.dart';
import 'package:english_explorer/details/family_members_screen.dart';
import 'package:english_explorer/details/numbers_screen.dart';
import 'package:english_explorer/gen/assets.gen.dart';
import 'package:english_explorer/models/category.dart';
import 'package:flutter/material.dart';

import 'widgets/category_card.dart';

class CategoriesScreen extends StatefulWidget {
  final VoidCallback onBack;

  const CategoriesScreen({super.key, required this.onBack});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  Category? _selectedCategory;

  final List<Category> _categories = [
    Category(name: 'Numbers', image: Assets.icons.numbers.path),
    Category(name: 'Family Members', image: Assets.icons.familyMembers.path),
    Category(name: 'Colors', image: Assets.icons.colors.path),
    Category(name: 'Animals', image: Assets.icons.animals.path),
  ];

  void _onCategoryTapped(Category category) {
    setState(() {
      _selectedCategory = category;
    });
  }

  void _onDetailBack() {
    setState(() {
      _selectedCategory = null;
    });
  }

  Widget _buildDetailScreen() {
    switch (_selectedCategory!.name) {
      case 'Numbers':
        return NumbersScreen(onBack: _onDetailBack);
      case 'Family Members':
        return FamilyMembersScreen(onBack: _onDetailBack);
      case 'Colors':
        return ColorsScreen(onBack: _onDetailBack);
      case 'Animals':
        return AnimalsScreen(onBack: _onDetailBack);
      default:
        return _buildCategoriesGrid(); // Fallback
    }
  }

  Widget _buildCategoriesGrid() {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: widget.onBack,
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
                itemCount: _categories.length,
                itemBuilder: (context, index) {
                  return CategoryCard(
                    category: _categories[index],
                    onTap: () => _onCategoryTapped(_categories[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _selectedCategory == null
        ? _buildCategoriesGrid()
        : _buildDetailScreen();
  }
}
