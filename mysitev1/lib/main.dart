import 'package:flutter/material.dart';
import 'api/base_repo.dart';
import 'view/responsive.dart';
import 'package:get/get.dart';

void main() {
  Get.put(BaseRepo());
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
      themeMode: ThemeMode.dark,
      home: const Responsive(),
    );
  }
}
