import 'package:flutter/material.dart';

import '../models/items.dart';
import '../widgets/exercise_item.dart';

class FavoriteScreen extends StatelessWidget {
  final List<Exercise> favoriteExercises;

  FavoriteScreen(this.favoriteExercises);

  @override
  Widget build(BuildContext context) {
    if (favoriteExercises.isEmpty) {
      return Center(
        child: Text('You have no favorites yet - start adding some!'),
      );
    } else {
      return ListView.builder(
        itemBuilder: (context, index) {
          return ExerciseItem(
            id: favoriteExercises[index].id,
            title: favoriteExercises[index].title,
            image: favoriteExercises[index].image,
            sets: favoriteExercises[index].sets,
            complexity: favoriteExercises[index].complexity,
          );
        },
        itemCount: favoriteExercises.length,
      );
    }
  }
}
