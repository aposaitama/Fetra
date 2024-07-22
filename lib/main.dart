import 'package:dart_simple/widgets/auth/auth_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetra',
      theme: ThemeData(
          appBarTheme: AppBarTheme(
        backgroundColor: const Color.fromRGBO(3, 37, 65, 1),
      )),
      home: AuthWidget(),
    );
  }
}
