import 'package:flutter/material.dart';
import 'package:soy_mobile_computing_flutter/screens/start_screen.dart';
import 'package:soy_mobile_computing_flutter/screens/login_screen.dart';
import 'package:soy_mobile_computing_flutter/screens/register_screen.dart';
import 'package:soy_mobile_computing_flutter/screens/for_you_feed_screen.dart';
import 'package:soy_mobile_computing_flutter/screens/explore_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ExploreScreen()
    ); // MaterialApp
  }
}
