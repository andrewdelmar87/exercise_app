import 'package:flutter/material.dart';

import './screens/tabs_screen.dart';
import 'screens/exercises_screen.dart';
import './screens/exercise_detail_screen.dart';
import 'screens/exercise_category_screen.dart';
import './data/dummy_data.dart';
import 'models/items.dart';
import 'screens/supplements_screen.dart';
import './screens/supplement_detail_screen.dart';
import './screens/supplement_category_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // Map<String, bool> _filters = {
  //   'upper_body': false,
  //   'lactose': false,
  //   'vegan': false,
  //   'vegetarian': false,
  // };

  // List<Exercise> _availableExercises = DUMMY_EXERCISES;
  List<Exercise> _favoriteExercises = [];
  List<Supplement> _supplements = DUMMY_SUPPLEMENTS;

  // void _setFilters(Map<String, bool> filterData) {
  //   setState(() {
  //     _filters = filterData;

  //     _availableExercises = DUMMY_EXERCISES.where((Exercise) {
  //       if (_filters['upper_body'] && !Exercise.isUpperBody) {
  //         return false;
  //       }
  //       if (_filters['lactose'] && !Exercise.isLactoseFree) {
  //         return false;
  //       }
  //       if (_filters['vegan'] && !Exercise.isVegan) {
  //         return false;
  //       }
  //       if (_filters['vegetarian'] && !Exercise.isVegetarian) {
  //         return false;
  //       }
  //       return true;
  //     }).toList();
  //   });
  // }

  void _toggleFavorite(String ExerciseId) {
    final existingIndex =
        _favoriteExercises.indexWhere((Exercise) => Exercise.id == ExerciseId);
    if (existingIndex >= 0) {
      setState(() {
        _favoriteExercises.removeAt(existingIndex);
      });
    } else {
      setState(() {
        _favoriteExercises.add(
          DUMMY_EXERCISES.firstWhere((Exercise) => Exercise.id == ExerciseId),
        );
      });
    }
  }

  bool _isExerciseFavorite(String id) {
    return _favoriteExercises.any((Exercise) => Exercise.id == id);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercises',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        accentColor: Color.fromARGB(255, 231, 218, 109),
        canvasColor: Colors.white,
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyText1: TextStyle(
              color: Colors.black,
            ),
            bodyText2: TextStyle(
              color: Colors.black,
              fontFamily: 'RobotoCondensed-Bold',
            ),
            headline6: TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold,
              color: Colors.white,
            )),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => TabsScreen(_favoriteExercises),
        ExercisesScreen.routeName: (context) =>
            ExercisesScreen(DUMMY_EXERCISES),
        ExerciseDetailScreen.routeName: (context) =>
            ExerciseDetailScreen(_toggleFavorite, _isExerciseFavorite),
        SupplementsCategoriesScreen.routeName: (context) =>
            SupplementsCategoriesScreen(),
        SupplementsScreen.routeName: (context) =>
            SupplementsScreen(_supplements),
        // SupplementDetailScreen.routeName: (context) => SupplementDetailScreen(),
      },
      onGenerateRoute: (settings) {
        // print(settings.arguments);
        return MaterialPageRoute(
          builder: (context) => ExercisesCategoriesScreen(),
        );
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => ExercisesCategoriesScreen(),
        );
      },
    );
  }
}
