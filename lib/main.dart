import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'user_data.dart';
import 'screen1.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => UserData(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'App',
      home: Screen1(),
    );
  }
}
