import 'package:flutter/material.dart';

import '../screens/exercises_screen.dart';

class ExerciseCategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final String image;

  ExerciseCategoryItem(this.id, this.title, this.image);

  void selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed(
      ExercisesScreen.routeName,
      arguments: {
        'id': id,
        'title': title,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15),
      child: GestureDetector(
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Text(
            title,
            style: Theme.of(context).textTheme.headline6,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(image),
              fit: BoxFit.cover,
              opacity: 0.9,
              colorFilter: ColorFilter.mode(
                  Color.fromARGB(50, 0, 0, 0), BlendMode.darken),
            ),
            // decoration: BoxDecoration(
            // gradient: LinearGradient(
            //   colors: [
            //     color.withOpacity(0.7),
            //     color,
            //   ],
            //   begin: Alignment.topLeft,
            //   end: Alignment.bottomRight,
            // ),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
    );
  }
}
