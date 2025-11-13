import 'package:flutter/material.dart';
import 'package:password_generator/screens/password_generator_screen.dart';
import 'package:provider/provider.dart';
import 'package:password_generator/models/password_settings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PasswordSettings(),
      child: MaterialApp(
        title: 'Password Generator',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: PasswordGeneratorScreen(),
      ),
    );
  }
}
