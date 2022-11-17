import 'package:flutter/material.dart';
import 'package:mysitev1/component/text/animated_text.dart';
import 'package:mysitev1/view/web/my_projects_page.dart';
import 'package:mysitev1/view/web/portfolio_page.dart';

import '../../view/web/me_page.dart';

class TapBarDefault extends StatefulWidget {
  @override
  _TapBarDefaultState createState() => _TapBarDefaultState();
}

class _TapBarDefaultState extends State<TapBarDefault>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int selectedItem = 0;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TabBar(
          indicatorColor: Colors.grey,
          tabs: [
            Tab(
                child: animatedText(
                    text: 'Home', page: selectedItem == 0 ? true : false)),
            Tab(
                child: animatedText(
                    text: 'my Projects',
                    page: selectedItem == 1 ? true : false)),
            Tab(
                child: animatedText(
                    text: 'Portfolio', page: selectedItem == 2 ? true : false))
          ],
          controller: _tabController,
          indicatorSize: TabBarIndicatorSize.label,
          onTap: (index) {
            setState(() {
              selectedItem = index;
            });
          },
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children:  [
              SizedBox(  width: width * 0.7 - 5,
                  child: const MePage()),
              MyProjectsPage(),
              PortfolioPage(),
            ],
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
//default
