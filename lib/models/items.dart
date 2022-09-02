import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

enum Complexity {
  Simple,
  Challenging,
  Hard,
}

enum TargetCategory {
  Body,
  Brain,
  Immunity,
  Muscles,
  Mental,
  Sexual,
}

class Exercise {
  final String id;
  final List<String> categories;
  final String title;
  final String image;
  final List<String> equipment;
  final List<String> steps;
  final String sets;
  final Complexity complexity;
  final bool isUpperBody;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;

  const Exercise({
    @required this.id,
    @required this.categories,
    @required this.title,
    @required this.image,
    @required this.equipment,
    @required this.steps,
    @required this.sets,
    @required this.complexity,
    @required this.isUpperBody,
    @required this.isLactoseFree,
    @required this.isVegan,
    @required this.isVegetarian,
  });
}

class Supplement {
  final String id;
  final List<String> categories;
  final String title;
  final String image;
  final String price;
  final TargetCategory targetCategory;
  final bool isUpperBody;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;

  const Supplement({
    @required this.id,
    @required this.categories,
    @required this.title,
    @required this.image,
    @required this.price,
    @required this.targetCategory,
    @required this.isUpperBody,
    @required this.isLactoseFree,
    @required this.isVegan,
    @required this.isVegetarian,
  });
}
