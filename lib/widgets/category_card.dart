import 'package:english_explorer/details/animals_screen.dart';
import 'package:english_explorer/details/colors_screen.dart';
import 'package:english_explorer/details/family_members_screen.dart';
import 'package:english_explorer/details/numbers_screen.dart';
import 'package:english_explorer/models/category.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final Category category;

  const CategoryCard({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: _getCategoryColor(category.name),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: InkWell(
        onTap: () {
          _navigateToCategoryScreen(context, category.name);
        },
        borderRadius: BorderRadius.circular(15),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              Image.asset(category.image, width: 40, height: 40),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  category.name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Color _getCategoryColor(String categoryName) {
    switch (categoryName) {
      case 'Numbers':
        return const Color(0xFFFEECEB);
      case 'Family Members':
        return const Color(0xFFFFF7E4);
      case 'Colors':
        return const Color(0xFFFEECEB);
      case 'Animals':
        return const Color(0xFFE9F8EE);
      default:
        return const Color(0xFFF5F5F5);
    }
  }

  void _navigateToCategoryScreen(BuildContext context, String categoryName) {
    switch (categoryName) {
      case 'Numbers':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const NumbersScreen()),
        );
        break;
      case 'Family Members':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const FamilyMembersScreen()),
        );
        break;
      case 'Colors':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ColorsScreen()),
        );
        break;
      case 'Animals':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const AnimalsScreen()),
        );
        break;
    }
  }
}
