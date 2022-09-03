
import 'package:app_meal2/screens/categories_screen.dart';
import 'package:app_meal2/screens/category_meal_screen.dart';
import 'package:app_meal2/screens/filters_screen.dart';
import 'package:app_meal2/screens/meal_detail_screen.dart';
import 'package:app_meal2/screens/tabs_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: const Color.fromRGBO(255, 254 , 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyText1: const TextStyle(
            fontSize: 15,
            color: Color.fromRGBO(20, 50, 50, 1),
          ),
          bodyText2: const TextStyle(
             fontSize: 24,
             fontFamily: "RobotoCondensed",
          ),
          
        )
      ),
      // home: const Categories_Screen(),
      routes: {
        "/":(context)=> const TabsScreen(),
        CategoryMealScreen.routeName:(context) => const CategoryMealScreen(),
        MealDetailScreen.routeName:(context) => const MealDetailScreen(),
        FiltersScreen.routeName : (context) => const FiltersScreen(),
      },
    );
  }
}



class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key,}) : super(key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meal App"),
      ),
      body: const CategoriesScreen(),
    );
  }
}
