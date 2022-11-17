import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:simple_icons/simple_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../component/App_Icons/app_icons.dart';
import '../../component/app bar/app_bar_defult.dart';
import '../../component/icon_than_text/icon_than_text.dart';
import '../../utils/colors.dart';
import 'app_bar_defult2.dart';

class HomePagePhone extends StatefulWidget {
  const HomePagePhone({Key? key}) : super(key: key);

  @override
  State<HomePagePhone> createState() => _HomePagePhoneState();
}

class _HomePagePhoneState extends State<HomePagePhone> {




  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return const Scaffold(
      backgroundColor: AppColors.mainColor,
      body: TapBarDefault2(),
    );
  }
}
