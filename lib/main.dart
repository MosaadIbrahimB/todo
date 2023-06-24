import 'package:flutter/material.dart';
import 'package:todo/model/theme/theme.dart';
import 'package:todo/screen/home/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ToDo',
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (_) => HomePage(),
      },
      theme: Mytheme.lightTheme,
      darkTheme: Mytheme.darkTheme,
    );
  }
}


