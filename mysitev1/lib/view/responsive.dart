import 'package:flutter/cupertino.dart';

import 'phone/home_page_phone.dart';
import 'web/home_page.dart';

class Responsive extends StatelessWidget {
  const Responsive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    print(width);
    return  width<500? const HomePagePhone():const HomePage();
  }
}
