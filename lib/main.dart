import 'package:flutter/material.dart';
import 'package:neopanel/authScreen.dart';
import 'package:neopanel/authorizationErrorScreen.dart';
import 'package:neopanel/resetPasswordScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        'auth': (context) => const AuthScreen(),
        'authError': (context) => const AuthorizationError(),
        'resetPassword': (context) => const ResetPasswordScreen(),
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: const AuthScreen(),
    );
  }
}
