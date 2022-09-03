import 'package:flutter/material.dart';

import '../data/dummy_data.dart';
import '../widgets/exercise_category_item.dart';

class ExercisesCategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(25),
      children: DUMMY_EXERCISE_CATEGORIES
          .map(
            (catData) => ExerciseCategoryItem(
              catData.id,
              catData.title,
              catData.image,
            ),
          )
          .toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
    );
  }
}
