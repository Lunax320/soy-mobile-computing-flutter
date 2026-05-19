import 'package:flutter/material.dart';
import 'package:soy_mobile_computing_flutter/screens/start_screen.dart';
import 'package:soy_mobile_computing_flutter/screens/login_screen.dart';
import 'package:soy_mobile_computing_flutter/screens/register_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RegisterScreen()
    ); // MaterialApp
  }
}
