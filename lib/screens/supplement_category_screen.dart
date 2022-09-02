import 'package:flutter/material.dart';

import '../data/dummy_data.dart';
import '../widgets/supplement_category_item.dart';

class SupplementsCategoriesScreen extends StatelessWidget {
  static const routeName = '/supplements-categories';
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(25),
      children: DUMMY_SUPPLEMENT_CATEGORIES
          .map(
            (catData) => SupplementCategoryItem(
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
