import 'package:flutter/material.dart';

import '../models/category.dart';
import '../models/items.dart';

const DUMMY_EXERCISE_CATEGORIES = const [
  // Category(
  //   id: 'c_e1',
  //   title: 'Biceps',
  //   color: Colors.indigo,
  // ),
  // Category(
  //   id: 'c_e2',
  //   title: 'Triceps',
  //   color: Colors.teal,
  // ),
  // Category(
  //   id: 'c_e3',
  //   title: 'Shoulders',
  //   color: Colors.orange,
  // ),
  // Category(
  //   id: 'c_e4',
  //   title: 'Pecs',
  //   color: Colors.amber,
  // ),
  // Category(
  //   id: 'c_e5',
  //   title: 'Back',
  //   color: Colors.blue,
  // ),
  // Category(
  //   id: 'c_e6',
  //   title: 'Abs',
  //   color: Colors.green,
  // ),
  // Category(
  //   id: 'c_e7',
  //   title: 'Quads',
  //   color: Colors.purple,
  // ),
  // Category(
  //   id: 'c_e8',
  //   title: 'Hamstrings',
  //   color: Colors.cyan,
  // ),
  // Category(
  //   id: 'c_e9',
  //   title: 'Calves',
  //   color: Colors.pink,
  // ),
];

const DUMMY_SUPPLEMENT_CATEGORIES = const [
  Category(
    id: 'c_s1',
    title: 'Brain',
    image:
        'https://envato-shoebox-0.imgix.net/c33d/dbdd-c3c3-446a-a5fc-ea2668a3d71b/DSC08065_.jpg?auto=compress%2Cformat&fit=max&mark=https%3A%2F%2Felements-assets.envato.com%2Fstatic%2Fwatermark2.png&markalign=center%2Cmiddle&markalpha=18&w=700&s=95b66d47d60c03dfeb6183ab8ee37cf5',
  ),
  Category(
    id: 'c_s2',
    title: 'Body',
    image:
        'https://envato-shoebox-0.imgix.net/9865/8e90-b5a2-4d20-b70f-e63c9e193808/337-mckinsey-34.jpg?auto=compress%2Cformat&fit=max&mark=https%3A%2F%2Felements-assets.envato.com%2Fstatic%2Fwatermark2.png&markalign=center%2Cmiddle&markalpha=18&w=500&s=e64464dcc95ea61469edd1500840b76a',
  ),
  Category(
    id: 'c_s3',
    title: 'Immunity',
    image:
        'https://envato-shoebox-0.imgix.net/576f/b208-f056-407d-add4-44812430753b/DSC_6444.jpg?auto=compress%2Cformat&fit=max&mark=https%3A%2F%2Felements-assets.envato.com%2Fstatic%2Fwatermark2.png&markalign=center%2Cmiddle&markalpha=18&w=700&s=5fa08a9a0e7c30c775464173bce81483',
  ),
  Category(
    id: 'c_s4',
    title: 'Mental',
    image:
        'https://envato-shoebox-0.imgix.net/24f9/1102-ed7a-4ffe-b06e-304eb8c8b744/DSC06607.jpg?auto=compress%2Cformat&fit=max&mark=https%3A%2F%2Felements-assets.envato.com%2Fstatic%2Fwatermark2.png&markalign=center%2Cmiddle&markalpha=18&w=700&s=6029d57c502a4e84cd89f61e09c3a854',
  ),
  Category(
    id: 'c_s5',
    title: 'Sexual',
    image:
        'https://envato-shoebox-0.imgix.net/85a9/b73c-8960-4016-98c3-7fd6f2f162be/DSC_8310.jpg?auto=compress%2Cformat&fit=max&mark=https%3A%2F%2Felements-assets.envato.com%2Fstatic%2Fwatermark2.png&markalign=center%2Cmiddle&markalpha=18&w=700&s=41dd706e69fb15c136253ba313915c21',
  ),
];

const DUMMY_EXERCISES = const [
  Exercise(
    id: 'e1',
    categories: [
      'c_e1',
    ],
    title: 'Bicep Curls',
    complexity: Complexity.Simple,
    image:
        'https://envato-shoebox-0.imgix.net/ea77/0acf-1782-4edc-b8f9-eb337acb67a4/IMG_5937.jpg?auto=compress%2Cformat&fit=max&mark=https%3A%2F%2Felements-assets.envato.com%2Fstatic%2Fwatermark2.png&markalign=center%2Cmiddle&markalpha=18&w=800&s=f47647f48496984ef7727fab4a04c0c5',
    sets: '5 sets x 10 reps',
    equipment: ['Dumbells', 'Cables'],
    steps: [
      'Hold dumbbell in hand perpendicular to body at waist',
      'Curl dumbbell up to shoulder height with elbow stationary',
      'Hold for 2 seconds',
      'Lower dumbbell back down to starting position',
      'Repeat',
    ],
  ),
  Exercise(
    id: 'e2',
    categories: [
      'c_e1',
      'c_e3',
      'c_e5',
    ],
    title: 'Pull-Up',
    complexity: Complexity.Challenging,
    image:
        'https://envato-shoebox-0.imgix.net/61f7/6c4b-dd4d-442d-88f2-f04c5f10e16a/Session+30-15.jpg?auto=compress%2Cformat&fit=max&mark=https%3A%2F%2Felements-assets.envato.com%2Fstatic%2Fwatermark2.png&markalign=center%2Cmiddle&markalpha=18&w=700&s=dc9645eee11e98cc5b875a4ef2dd45d4',
    sets: '5 sets x 10 reps',
    equipment: ['Pull-Up Bar'],
    steps: [
      'Grip bar with fingers facing towards you',
      'Hang from bar with straight arms',
      'Raise body until eyes at bar height',
      'Lower body until arms straight',
      'Repeat',
    ],
  ),
];

const DUMMY_SUPPLEMENTS = const [
  Supplement(
    id: 's1',
    categories: [
      'c_s2',
    ],
    title: 'Creatine',
    targetCategory: TargetCategory.Brain,
    image:
        'https://envato-shoebox-0.imgix.net/21f4/7d73-9b14-4e1f-9f13-ec85c5d12dca/IMG_1542.jpg?auto=compress%2Cformat&fit=max&mark=https%3A%2F%2Felements-assets.envato.com%2Fstatic%2Fwatermark2.png&markalign=center%2Cmiddle&markalpha=18&w=700&s=fdfd18979818236ce948765620dff101',
    isUpperBody: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Supplement(
    id: 's2',
    categories: [
      'c_s3',
    ],
    title: 'Vitamin D',
    targetCategory: TargetCategory.Immunity,
    image:
        'https://envato-shoebox-0.imgix.net/b653/c02e-c445-4e26-af52-a9e386b9deea/166.jpg?auto=compress%2Cformat&fit=max&mark=https%3A%2F%2Felements-assets.envato.com%2Fstatic%2Fwatermark2.png&markalign=center%2Cmiddle&markalpha=18&w=700&s=cd49c3d9a3f9badc2855a56bab0701f8',
    isUpperBody: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
];
