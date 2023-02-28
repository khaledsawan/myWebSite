import 'package:flutter/material.dart';
import 'package:khaledsawan/view/phone/portfolio_page_phone.dart';
import '../../component/text/animated_text.dart';
import 'contact_phone.dart';
import 'me_page_phone.dart';
import 'my_projects_page_phone.dart';

class TapBarDefault2 extends StatefulWidget {
  const TapBarDefault2({super.key});

  @override
  _TapBarDefault2State createState() => _TapBarDefault2State();
}

class _TapBarDefault2State extends State<TapBarDefault2>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int selectedItem = 0;
  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TabBar(
            indicatorColor: Colors.grey,
            tabs: [
              Tab(
                  child: animatedText(
                      text: 'Home', page: selectedItem == 0 ? true : false)),
              Tab(
                  child: animatedText(
                      text: 'Projects',
                      page: selectedItem == 1 ? true : false)),
              Tab(
                  child: animatedText(
                      text: 'Portfolio', page: selectedItem == 2 ? true : false)),
              Tab(
                  child: animatedText(
                      text: 'Contact', page: selectedItem ==3 ? true : false))
            ],
            controller: _tabController,
            indicatorSize: TabBarIndicatorSize.label,
            onTap: (index) {
              setState(() {
                selectedItem = index;
              });
            },
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: [
             const MePage2(),
              MyProjectsPagePhone(),
              PortfolioPagePhone(),
              const AboutUsPage(),
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
