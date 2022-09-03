import 'package:flutter/material.dart';
import '../screens/supplement_detail_screen.dart';

import '../models/items.dart';

class SupplementItem extends StatelessWidget {
  final String id;
  final String title;
  final String image;
  final String sets;
  final String categories;
  final TargetCategory targetCategory;

  SupplementItem({
    @required this.id,
    @required this.title,
    @required this.image,
    @required this.sets,
    @required this.categories,
    @required this.targetCategory,
  });

  String get categoryText {
    switch (targetCategory) {
      case TargetCategory.Brain:
        return 'Brain';
        break;
      case TargetCategory.Mental:
        return 'Mental';
        break;
      case TargetCategory.Sexual:
        return 'Sexual';
        break;
      case TargetCategory.Immunity:
        return 'Immunity';
        break;
      case TargetCategory.Body:
        return 'Body';
        break;
      default:
        return 'Unknown';
    }
  }

  void selectSupplement(BuildContext context) {
    Navigator.of(context)
        .pushNamed(
      SupplementDetailScreen.routeName,
      arguments: id,
    )
        .then(
      (result) {
        if (result != null) {
          // removeItem(result);
        }
      },
    );
  }

  // String get categoryText {
  //   if (categories == 'c_s1') {
  //     return 'Brain';
  //   } else if (categories == 'c_s2') {
  //     return 'Muscles';
  //   } else if (categories == 'c_s3') {
  //     return 'Immunity';
  //   } else if (categories == 'c_s4') {
  //     return 'Mental';
  //   } else if (categories == 'c_s5') {
  //     return 'Sexual';
  //   } else {
  //     return 'n/a';
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    print(id);
    return InkWell(
      onTap: () => selectSupplement(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 4,
        margin: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    image,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 0,
                  child: Container(
                    width: 300,
                    color: Color.fromARGB(150, 0, 0, 0),
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20,
                    ),
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.numbers,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.category,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(categoryText),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
