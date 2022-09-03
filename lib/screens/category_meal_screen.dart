
import 'package:flutter/material.dart';


import '../dummy_data.dart';
import '../modules/meal.dart';
import '../widgets/meal_item.dart';

class CategoryMealScreen extends StatefulWidget {
  const CategoryMealScreen({Key? key}) : super(key: key);
  static const routeName = "Category_meal";
  @override
  State<CategoryMealScreen> createState() => _CategoryMealScreenState();
}

class _CategoryMealScreenState extends State<CategoryMealScreen> {
  String categoryTitle="";
  List<Meal> displayMeal =[];
  @override
  Widget build(BuildContext context) {
    void didChangeDependencies() {
       
      super.didChangeDependencies();
    }
     
     final routeArg =
          ModalRoute.of(context)!.settings.arguments as Map<String, String>;
      final categoryId = routeArg["id"];
      final categoryTitle = routeArg["title"];
      displayMeal = DUMMY_MEALS.where((meal) {
        return meal.categories.contains(categoryId);
      }).toList();


    void initState() {
     
      super.initState();
    }

      removeItem(String mealID) {
          setState(() {
        displayMeal.removeWhere((meal) => meal.id == mealID);
        });
      }
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: displayMeal[index].id,
            imageUrl: displayMeal[index].imageUrl,
            duration: displayMeal[index].duration,
            title: displayMeal[index].title,
            complexity: displayMeal[index].complexity,
            affordability: displayMeal[index].affordability,
            removeItem: ()=> removeItem(displayMeal[index].id),
          );
        },
        itemCount: displayMeal.length,
      ),
    );
  }

  
}
