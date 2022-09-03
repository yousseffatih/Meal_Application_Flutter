import 'package:flutter/material.dart';

import '../dummy_data.dart';
import '../widgets/category_iteam.dart';

// ignore: camel_case_types
class  CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: GridView(
        padding: const EdgeInsets.all(25),
        children: DUMMY_CATEGORIES.map((catData) => CategoryItem(catData.id, catData.title, catData.color),).toList() ,
    
          // ElevatedButton(onPressed: (){}, style:  ButtonStyle(
          //    backgroundColor: MaterialStateProperty.all(Colors.red),
          // ), child: null,),
          
        gridDelegate: const  SliverGridDelegateWithMaxCrossAxisExtent(
           maxCrossAxisExtent: 200,
          childAspectRatio: 3/2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}