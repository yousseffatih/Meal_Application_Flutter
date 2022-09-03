import 'package:flutter/material.dart';

import '../widgets/Main_drawer.dart';

class FiltersScreen extends StatelessWidget {
  const FiltersScreen({Key? key}) : super(key: key);
  static const routeName = "FiltersScreen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Filters"),
      ),
      body: Center(
        child: Text("Filters!"),
      ),
      drawer: MainDrawer(),
    );
  }
}
