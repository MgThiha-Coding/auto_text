import 'package:auto_text/auto_text.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          // Prevents UI issues with notches
          child: Center(
            child: AutoText(
              text: 'Welcome to AutoText!',
              baseFontSize:
                  20, // This can still scale dynamically inside AutoText
              spacing: 3,
              color: Colors.blueAccent,
              fontStyle: FontStyle.italic,
              weight: FontWeight.bold,
              overFlow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ),
    );
  }
}
