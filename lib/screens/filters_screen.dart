// import 'package:flutter/material.dart';

// import '../widgets/main_drawer.dart';
// import '../main.dart';

// class FiltersScreen extends StatefulWidget {
//   static const routeName = '/filters';

//   final Function saveFilters;
//   final Map<String, bool> currentFilters;

//   FiltersScreen(this.saveFilters, this.currentFilters);

//   @override
//   State<FiltersScreen> createState() => _FiltersScreenState();
// }

// class _FiltersScreenState extends State<FiltersScreen> {
//   bool _upperBody = false;
//   bool _vegetarian = false;
//   bool _vegan = false;
//   bool _lactoseFree = false;

//   @override
//   void initState() {
//     _upperBody = widget.currentFilters['upper_body'];
//     _vegetarian = widget.currentFilters['vegetarian'];
//     _vegan = widget.currentFilters['vegan'];
//     _lactoseFree = widget.currentFilters['lactose'];
//     super.initState();
//   }

//   Widget _buildSwitchListTile(
//     String title,
//     bool currentValue,
//     Function updateValue,
//   ) {
//     return SwitchListTile(
//       title: Text(title),
//       value: currentValue,
//       onChanged: updateValue,
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Your filters'),
//           actions: [
//             IconButton(
//               icon: Icon(Icons.save),
//               onPressed: () {
//                 final selectedFilters = {
//                   'upper_body': _upperBody,
//                   'lactose': _lactoseFree,
//                   'vegan': _vegan,
//                   'vegetarian': _vegetarian,
//                 };
//                 widget.saveFilters(selectedFilters);
//               },
//             ),
//           ],
//         ),
//         drawer: MainDrawer(),
//         body: Column(
//           children: [
//             Container(
//               padding: EdgeInsets.all(20),
//               child: Text(
//                 'Exercise Filter',
//                 style: Theme.of(context).textTheme.headline6,
//               ),
//             ),
//             Expanded(
//               child: ListView(
//                 children: <Widget>[
//                   _buildSwitchListTile(
//                     'Upper Body',
//                     _upperBody,
//                     (newValue) {
//                       setState(
//                         () {
//                           _upperBody = newValue;
//                         },
//                       );
//                     },
//                   ),
//                   _buildSwitchListTile(
//                     'Lower Body',
//                     _lactoseFree,
//                     (newValue) {
//                       setState(
//                         () {
//                           _lactoseFree = newValue;
//                         },
//                       );
//                     },
//                   ),
//                   _buildSwitchListTile(
//                     'Body Weight',
//                     _vegetarian,
//                     (newValue) {
//                       setState(
//                         () {
//                           _vegetarian = newValue;
//                         },
//                       );
//                     },
//                   ),
//                   _buildSwitchListTile(
//                     'Equipment',
//                     _vegan,
//                     (newValue) {
//                       setState(
//                         () {
//                           _vegan = newValue;
//                         },
//                       );
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ));
//   }
// }
