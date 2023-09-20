import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:khaledsawan/view/phone/portfolio_page_phone.dart';
import '../../component/text/animated_text.dart';
import '../../utils/AppConstants.dart';
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
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(AppConstants.backImg),
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.0),
                ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TabBar(
                  indicatorColor: Colors.grey,
                  tabs: [
                    _buildTab(text: 'Home', index: 0),
                    _buildTab(text: 'Projects', index: 1),
                    _buildTab(text: 'Portfolio', index: 2),
                    _buildTab(text: 'Contact', index: 3),
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
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TabBarView(
                    controller: _tabController,
                    children: const [
                      MePage2(),
                      MyProjectsPagePhone(),
                      PortfolioPagePhone(),
                      AboutUsPage(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTab({required String text, required int index}) {
    return Tab(
      child: animatedText(
        text: text,
        page: selectedItem == index,
      ),
    );
  }
}
