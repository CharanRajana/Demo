import 'package:bottom_street_demo/screens/Homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bottom-Sheet Demo',
      theme: ThemeData(
        //useMaterial3: true,
        primarySwatch: Colors.grey,
      ),
      home: const Homepage(),
    );
  }
}
