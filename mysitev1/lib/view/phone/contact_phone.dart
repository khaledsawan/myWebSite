import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:khaledsawan/api/base_repo.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:simple_icons/simple_icons.dart';

import '../../../component/icon_than_text/icon_than_text.dart';
import '../../../utils/colors.dart';
import 'package:khaledsawan/utils/AppConstants.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Widget _buildContactRow({
    required BuildContext context,
    required IconData icon,
    required String text,
    required Color iconColor,
    required Color textColor,
    required String url,
  }) {
    final double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        _launchURL(url);
      },
      child: Container(
        margin:const EdgeInsets.all(4),
        child: IconThanText(
          width: width,
          margin: const EdgeInsets.all(1),
          sizedWidth: 5,
          iconColor: iconColor,
          icon: icon,
          text: text,
          color: AppColors.white,
          textColor: textColor,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    return GetBuilder<BaseRepo>(builder: (controller) {
      return SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(8),
              width: width,
              height: height * 0.27,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: const DecorationImage(
                  image: NetworkImage(AppConstants.meImg),
                ),
              ),
            ),
            _buildContactRow(
              context: context,
              icon: Icons.email,
              text: controller.profileData.email!,
              iconColor: AppColors.red,
              textColor: AppColors.textColor,
              url: 'mailto:${controller.profileData.email!}',
            ),
            _buildContactRow(
              context: context,
              icon: Icons.phone_android_outlined,
              text: 'Phone Call',
              iconColor: AppColors.green,
              textColor: AppColors.textColor,
              url: 'tel:(+963)${controller.profileData.phone!}',
            ),
            _buildContactRow(
              context: context,
              icon: Icons.telegram_outlined,
              text: 'Telegram',
              iconColor: AppColors.blue,
              textColor: AppColors.textColor,
              url: controller.profileData.telegram!,
            ),
            _buildContactRow(
                context: context,
                icon: SimpleIcons.github,
                text: 'GitHub',
                iconColor: Colors.purple,
                textColor: AppColors.textColor,
                url: controller.profileData.github!),
            _buildContactRow(
              context: context,
              icon: SimpleIcons.linkedin,
              text: "Linkedin",
              iconColor: AppColors.blue,
              textColor: AppColors.textColor,
              url: controller.profileData.linkedin!,
            ),
          ],
        ),
      );
    });
  }
}
