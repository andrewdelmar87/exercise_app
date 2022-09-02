import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/models/items.dart';
import 'package:flutter_complete_guide/widgets/exercise_item.dart';
import '../widgets/exercise_item.dart';
import '../models/items.dart';
import '../data/dummy_data.dart';

class ExercisesScreen extends StatefulWidget {
  static const routeName = '/category-exercises';

  final List<Exercise> availableExercises;

  ExercisesScreen(this.availableExercises);

  @override
  State<ExercisesScreen> createState() => _ExercisesScreenState();
}

class _ExercisesScreenState extends State<ExercisesScreen> {
  String categoryTitle;
  List<Exercise> displayedExercises;
  var _loadedInitData = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    if (!_loadedInitData) {
      final routeArgs =
          ModalRoute.of(context).settings.arguments as Map<String, String>;
      categoryTitle = routeArgs['title'];
      final categoryId = routeArgs['id'];
      displayedExercises = DUMMY_EXERCISES.where((exercise) {
        // print(Text(categoryId));
        return exercise.categories.contains(categoryId);
      }).toList();
      _loadedInitData = true;
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          // The issue is in here - something with categoryId
          return ExerciseItem(
            id: displayedExercises[index].id,
            title: displayedExercises[index].title,
            image: displayedExercises[index].image,
            sets: displayedExercises[index].sets,
            complexity: displayedExercises[index].complexity,
          );
        },
        itemCount: displayedExercises.length,
      ),
    );
  }
}
