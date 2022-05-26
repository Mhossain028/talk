import 'package:flutter/material.dart';
import 'package:talk/screen/auth/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TALK',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      home: SignUpPage(),
    );
  }
}
