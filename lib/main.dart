import 'package:flutter/material.dart';
import 'package:flutter_meal_app/screens/filters_screen.dart';
import 'package:flutter_meal_app/screens/tab_screen.dart';
import './screens/category_meals_screen.dart';
import './screens/meal_detail_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              // ignore: deprecated_member_use
              body1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              // ignore: deprecated_member_use
              body2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              // ignore: deprecated_member_use
              title: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
              ),
            ),
      ),
      // home: new HomePageScreen(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => TabsScreen(),
        '/category-meals': (ctx) => CategoryMealsScreen(),
        '/meal-detail': (ctx) => MealDetailScreen(),
        '/filters': (ctx) => FilterScreen()
      },
      onGenerateRoute: (settings) {
        print(settings.arguments);
      },
    );
  }
}
