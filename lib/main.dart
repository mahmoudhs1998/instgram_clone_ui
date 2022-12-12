import 'package:flutter/material.dart';
import 'package:instgram_clone_ui/screens/home_screen.dart';

void main() {
  runApp(const InstgramApp());
}

class InstgramApp extends StatelessWidget {
  const InstgramApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instgram',
      theme: ThemeData(

        primarySwatch: Colors.grey,
      ),
      home:HomeScreen(),
    );
  }
}

