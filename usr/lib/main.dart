import 'package:couldai_user_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'English for Kids',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: GoogleFonts.balooBhaijaan2TextTheme(
          Theme.of(context).textTheme,
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF58CC02),
          primary: const Color(0xFF58CC02),
          secondary: const Color(0xFFCE82FF),
        ),
        scaffoldBackgroundColor: const Color(0xFFF7F7F7),
      ),
      home: const SplashScreen(),
    );
  }
}
