import 'package:flutter/material.dart';
import 'package:started_template_food_delivery_ui/screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Food Delivery',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.grey[50],
            colorScheme: ColorScheme.fromSwatch()
                .copyWith(primary: Colors.deepOrangeAccent)),
        home: HomeScreen());
  }
}
