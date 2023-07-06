import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:todo/model/theme/theme.dart';
import 'package:todo/screen/home/home.dart';
import 'package:todo/screen/login/login_screen.dart';
import 'package:todo/screen/register/screen/register_screen.dart';
import 'package:todo/screen/seting/screen/seting_screen.dart';
import 'package:todo/screen/task/model/data_time.dart';
import 'provider/provider.dart';
import 'package:provider/provider.dart';

import 'screen/task/task_Screen.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
       MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => IconProvider()),
      ],
      child: const MyApp(),
    ),
  );

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ToDo',
      initialRoute: RegisterScreen.routeName,
      routes: {
        HomePage.routeName: (_) => HomePage(),
        SettingScreen.routeName: (_) => SettingScreen(),
        TaskScreen.routeName: (_) => TaskScreen(),
        DataTime.routeName: (_) => DataTime(),
        RegisterScreen.routeName: (_) => RegisterScreen(),
        loginScreen.routeName: (_) => loginScreen(),
      },
      theme: Mytheme.lightTheme,
      darkTheme: Mytheme.darkTheme,
    );
  }
}


