import 'package:english_explorer/categories_screen.dart';
import 'package:english_explorer/welcome_screen.dart';
import 'package:english_explorer/widgets/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _navigateToCategories() {
    _onItemTapped(1);
  }

  void _navigateToWelcome() {
    _onItemTapped(0);
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> widgetOptions = <Widget>[
      WelcomeScreen(onStartLearning: _navigateToCategories),
      CategoriesScreen(onBack: _navigateToWelcome),
      const Scaffold(body: Center(child: Text('Progress'))),
      const Scaffold(body: Center(child: Text('Settings'))),
    ];

    return Scaffold(
      body: Center(child: widgetOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: AppBottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
