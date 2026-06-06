import 'package:flutter/material.dart';
import 'package:kissa_agility_pisteet/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      title: 'Kissa Agility estepisteet',
      home: const HomePage(),
    );
  }
}
