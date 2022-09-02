import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/models/items.dart';
import '../widgets/supplement_item.dart';
import '../models/items.dart';

class SupplementsScreen extends StatefulWidget {
  static const routeName = '/category-supplements';

  final List<Supplement> supplements;

  SupplementsScreen(this.supplements);

  @override
  State<SupplementsScreen> createState() => _SupplementsScreenState();
}

class _SupplementsScreenState extends State<SupplementsScreen> {
  String categoryTitle;
  List<Supplement> supplements;
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
      supplements = widget.supplements.where((Supplement) {
        return Supplement.categories.contains(categoryId);
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
          return SupplementItem(
            id: supplements[index].id,
            title: supplements[index].title,
            image: supplements[index].image,
          );
        },
        itemCount: supplements.length,
      ),
    );
  }
}
