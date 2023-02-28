import 'package:flutter/material.dart';
import 'view/responsive.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Khaled Sawan',
      theme: ThemeData.dark(),
       debugShowCheckedModeBanner: false,
       themeMode:ThemeMode.dark,
       home: const Responsive(),
    );
  }
}
