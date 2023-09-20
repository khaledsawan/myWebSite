import 'package:flutter/cupertino.dart';

import 'phone/app_bar_defult2.dart';
import 'web/home_page.dart';

class Responsive extends StatelessWidget {
  const Responsive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return width < 800 ? const TapBarDefault2() : const HomePage();
  }
}
