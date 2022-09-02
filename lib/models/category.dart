import 'package:flutter/material.dart';

class Category {
  final String id;
  final String title;
  final String image;

  const Category({
    @required this.id,
    @required this.title,
    this.image =
        'https://envato-shoebox-0.imgix.net/ea77/0acf-1782-4edc-b8f9-eb337acb67a4/IMG_5937.jpg?auto=compress%2Cformat&fit=max&mark=https%3A%2F%2Felements-assets.envato.com%2Fstatic%2Fwatermark2.png&markalign=center%2Cmiddle&markalpha=18&w=800&s=f47647f48496984ef7727fab4a04c0c5',
  });
}
