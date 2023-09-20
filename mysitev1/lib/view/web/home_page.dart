import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:khaledsawan/api/base_repo.dart';
import 'package:simple_icons/simple_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../component/app bar/app_bar_defult.dart';
import '../../component/icon_than_text/icon_than_text.dart';
import '../../utils/AppConstants.dart';
import '../../utils/colors.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  _launchUrl(String urlStr) async {
    var url = Uri.parse(urlStr);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(AppConstants.backImg),
                ),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.0),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: width,
              height: height,
              margin: EdgeInsets.symmetric(
                vertical: height * 0.05,
                // horizontal: width * 0.05,
              ),
              decoration: BoxDecoration(
                color: AppColors.mainColor.withOpacity(0.9),
                border: Border.all(width: 1, color: AppColors.courseColor),
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 25,
                    spreadRadius: 25,
                  ),
                ],
              ),
              child: GetBuilder<BaseRepo>(
                builder: (controller) {
                  return SingleChildScrollView(
                    child: Row(
                      children: [
                        _buildContactColumn(width, height, controller),
                        SizedBox(
                          width: width * 0.7 - 5,
                          height: height * 0.9,
                          child: const TapBarDefault(),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContactColumn(
    double width,
    double height,
    BaseRepo controller,
  ) {
    return SizedBox(
      width: width * 0.2,
      height: height * 0.9,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(
                left: 25,
                right: 25,
                top: 30,
              ),
              child: CircleAvatar(
                backgroundImage: const NetworkImage(AppConstants.meImg),
                radius: width * 0.07,
              ),
            ),
            SizedBox(height: height * 0.05),
            _buildContactItem(
              icon: Icons.email,
              iconColor: AppColors.red,
              text: 'Email',
              onTap: () =>
                  _launchUrl('mailto:${controller.profileData.email!}'),
            ),
            _buildContactItem(
              icon: SimpleIcons.linkedin,
              iconColor: AppColors.bluegra,
              text: 'LinkedIn',
              onTap: () => _launchUrl(controller.profileData.linkedin!),
            ),
            _buildContactItem(
              icon: SimpleIcons.github,
              iconColor: AppColors.purple,
              text: 'GitHub',
              onTap: () => _launchUrl(controller.profileData.github!),
            ),
            _buildContactItem(
              icon: Icons.telegram,
              iconColor: AppColors.blue,
              text: 'Telegram',
              onTap: () => _launchUrl(controller.profileData.telegram!),
            ),
            _buildContactItem(
              icon: Icons.contact_phone,
              iconColor: AppColors.green1,
              text: 'Phone Call',
              onTap: () =>
                  _launchUrl('tel:(+963)${controller.profileData.phone!}'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContactItem({
    required IconData icon,
    required Color iconColor,
    required String text,
    required Function onTap,
  }) {
    return InkWell(
      onTap: () => onTap(),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: IconThanText(
          iconColor: iconColor,
          iconBackColor: AppColors.mainColor,
          textColor: iconColor,
          icon: icon,
          text: text,
          color: iconColor,
        ),
      ),
    );
  }
}
