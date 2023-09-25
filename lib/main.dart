//import 'package:cloudnew/resources/auth_methods.dart';
import 'package:cloudnew/screens/home_screen.dart';
import 'package:cloudnew/screens/login_screen.dart';
import 'package:cloudnew/utilities/colors.dart';
//import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart'; 


void main() async {

  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(), 
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learn Longue',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/home':(context) => const HomeScreen(),
        '/loginscreen':(context) => const LoginScreen(),
      },
       home: const LoginScreen(),
    );
  }
}


