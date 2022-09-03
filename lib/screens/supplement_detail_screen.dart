import 'package:flutter/material.dart';
import '../models/items.dart';

import '../data/dummy_data.dart';

class SupplementDetailScreen extends StatefulWidget {
  static const routeName = '/supplement-detail';

  final Function toggleFavorite;
  final Function isFavorite;

  SupplementDetailScreen(this.toggleFavorite, this.isFavorite);

  @override
  State<SupplementDetailScreen> createState() => _SupplementDetailScreenState();
}

class _SupplementDetailScreenState extends State<SupplementDetailScreen> {
  Widget buildSectionTitle(BuildContext context, String text) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(text, style: Theme.of(context).textTheme.headline6),
    );
  }

  Widget buildContainer(Widget child, double cardHeight) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
        ),
        height: cardHeight,
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        width: 300,
        child: child,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final SupplementId = ModalRoute.of(context).settings.arguments as String;
    final selectedSupplement = DUMMY_SUPPLEMENTS.firstWhere(
      (Supplement) => Supplement.id == SupplementId,
    );

    return Center(
      child: Scaffold(
        appBar: AppBar(title: Text('${selectedSupplement.title}')),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                child: Image.network(
                  selectedSupplement.image,
                  fit: BoxFit.cover,
                ),
              ),
              buildSectionTitle(context, 'Equipment'),
              Container(
                child: buildContainer(
                    Container(
                      child: ListView.builder(
                        itemBuilder: (context, index) => Card(
                          shadowColor: Colors.blueGrey,
                          elevation: 1,
                          color: Theme.of(context).accentColor,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            child: Text(
                              selectedSupplement.categories[index],
                            ),
                          ),
                        ),
                        itemCount: selectedSupplement.categories.length,
                      ),
                    ),
                    100),
              ),
              Column(
                children: [
                  buildSectionTitle(context, 'Instructions'),
                  buildContainer(
                      ListView.builder(
                        itemBuilder: (context, index) => Column(
                          children: [
                            ListTile(
                              leading: CircleAvatar(
                                child: Text('#${index + 1}'),
                              ),
                              title: Text(
                                selectedSupplement.targetCategory.name[index],
                              ),
                            ),
                            Divider(),
                          ],
                        ),
                        itemCount: selectedSupplement.id.length,
                      ),
                      400),
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            widget.isFavorite(SupplementId) ? Icons.star : Icons.star_border,
          ),
          onPressed: () => widget.toggleFavorite(SupplementId),
        ),
      ),
    );
  }
}
