import 'package:diary/home/home.dart';
import 'package:diary/section/settings.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF8A9A5B), // #8A9A5B 세이지그린
        canvasColor: Color(0xFFE9E2D3),
        focusColor: Color(0xFF867647),
      ),
      home: const HomeScreen(),
      routes: {
        'settings': (context) => const Settings(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
