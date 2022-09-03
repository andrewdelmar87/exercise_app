import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/supplement_categories_screen.dart';
import 'favorites_screen.dart';
import 'exercise_categories_screen.dart';
import '../widgets/main_drawer.dart';
import '../models/items.dart';

class TabsScreen extends StatefulWidget {
  static const routeName = '/tabs';
  final List<Exercise> favoriteExercises;

  TabsScreen(this.favoriteExercises);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Map<String, Object>> _pages;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    _pages = [
      {
        'page': ExercisesCategoriesScreen(),
        'title': 'Exercises',
      },
      {
        'page': SupplementsCategoriesScreen(),
        'title': 'Supplements',
      },
      {
        'page': FavoriteScreen(widget.favoriteExercises),
        'title': 'Favorites',
      },
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title']),
      ),
      // drawer: MainDrawer(),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectedPageIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Exercises',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.medication),
            label: 'Supplements',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favorites',
          ),
        ],
      ),
    );
  }
}
