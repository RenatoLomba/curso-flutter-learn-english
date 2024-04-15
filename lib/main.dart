import 'package:flutter/material.dart';
import 'package:learn_english/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Learn English',
      theme: ThemeData(
        primaryColor: const Color(0xff795548),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xff795548),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        tabBarTheme: const TabBarTheme(
          indicatorColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.tab,
          dividerHeight: 0,
          labelColor: Colors.white,
          labelStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          unselectedLabelColor: Colors.white54,
          unselectedLabelStyle: TextStyle(fontSize: 18),
        ),
        scaffoldBackgroundColor: const Color(0xfff5e9b9),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Aprenda inglês'),
    );
  }
}
