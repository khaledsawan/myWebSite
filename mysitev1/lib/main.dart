import 'package:flutter/material.dart';
import 'package:mysitev1/view/web/home_page.dart';

import 'view/phone/home_page_phone.dart';
import 'view/responsive.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
       debugShowCheckedModeBanner: false,
       themeMode:ThemeMode.dark,
       home: Responsive(),
    );
  }
}
