import 'package:flutter/material.dart';
import 'package:tugas_1/config/app_colors.dart';
import 'package:tugas_1/pages/tugas_1.dart';
import 'package:tugas_1/pages/tugas_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tugas flutter bagian 1',
      theme: appTheme,
      initialRoute: '/',
      routes: {
        '/': (context) => const Tugas1(),
        '/tugas_2': (context) => const Tugas2(),
      },
    );
  }
}
