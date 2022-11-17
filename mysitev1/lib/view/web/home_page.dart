import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:simple_icons/simple_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../component/App_Icons/app_icons.dart';
import '../../component/app bar/app_bar_defult.dart';
import '../../component/icon_than_text/icon_than_text.dart';
import '../../utils/colors.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  _makingPhoneCall() async {
    var url = Uri.parse("tel:(+963) 967184204");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _sendingMails() async {
    var url = Uri.parse("mailto:khaled963sawan@gmail.com@email.com");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _openTelegram() async {
    var url = Uri.parse("https://t.me/KHALEDSAWAN");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _openGitHub() async {
    var url = Uri.parse("https://github.com/khaledsawan");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _openLinkedIn() async {
    var url = Uri.parse("https://www.linkedin.com/in/khaled-sawan");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }


  int selectedPage = 0;
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
                        image: AssetImage('image/back ground.png'))),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
                  child: Container(
                    decoration:
                    BoxDecoration(color: Colors.white.withOpacity(0.0)),
                  ),
                )),
            Container(
              alignment: Alignment.center,
              width: width,
              height: height,
              // padding: EdgeInsets.all(height*0.05),
              margin: EdgeInsets.symmetric(
                  vertical: height * 0.05, horizontal: width * 0.05),
              decoration: BoxDecoration(
                  color: AppColors.mainColor.withOpacity(0.9),
                  border: Border.all(width: 1, color: AppColors.courseColor),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 25,
                        spreadRadius: 25),
                  ]),
              child: SingleChildScrollView(
                child: Row(
                  children: [
                    width < 900
                        ? SizedBox(
                      width: width * 0.2,
                      height: height * 0.9,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 30),
                              alignment: Alignment.center,
                              child: CircleAvatar(
                                backgroundImage: const AssetImage(
                                    'image/me-20220826.jpg'),
                                radius: width * 0.07,
                              ),
                            ),
                            SizedBox(height: height * 0.05),
                            GestureDetector(
                              onTap: () {
                                _sendingMails();
                              },
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: AppIcons(
                                  iconColor: AppColors.red,
                                  backgruondcolor: AppColors.mainColor,
                                  icon: Icons.email,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                _openLinkedIn();
                              },
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: AppIcons(
                                  iconColor: AppColors.bluegra,
                                  backgruondcolor: AppColors.mainColor,
                                  icon: SimpleIcons.linkedin,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                _openGitHub();
                              },
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: AppIcons(
                                  iconColor: AppColors.purple,
                                  backgruondcolor: AppColors.mainColor,
                                  icon: SimpleIcons.github,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                _openTelegram();
                              },
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: AppIcons(
                                  iconColor: AppColors.blue,
                                  backgruondcolor: AppColors.mainColor,
                                  icon: Icons.telegram,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                _makingPhoneCall();
                              },
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: AppIcons(
                                  iconColor: AppColors.green1,
                                  backgruondcolor: AppColors.mainColor,
                                  icon: Icons.contact_phone,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                        : SizedBox(
                      width: width * 0.2,
                      height: height * 0.9,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(top: 30),
                              alignment: Alignment.center,
                              child: CircleAvatar(
                                backgroundImage: const AssetImage(
                                    'image/me-20220826.jpg'),
                                radius: width * 0.07,
                              ),
                            ),
                            SizedBox(height: height * 0.05),
                            GestureDetector(
                              onTap: () {
                                _sendingMails();
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: IconThanText(
                                    iconColor: AppColors.red,
                                    iconBackColor: AppColors.mainColor,
                                    textColor: AppColors.red,
                                    icon: Icons.email,
                                    text: 'khaled963sawan@gmail.com',
                                    color: AppColors.red),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                _openLinkedIn();
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: IconThanText(
                                    iconColor: AppColors.bluegra,
                                    iconBackColor: AppColors.mainColor,
                                    textColor: AppColors.bluegra,
                                    icon: SimpleIcons.linkedin,
                                    text: 'linkedin.com/in/khaled-sawan',
                                    color: AppColors.bluegra),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                _openGitHub();
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: IconThanText(
                                    iconColor: AppColors.purple,
                                    iconBackColor: AppColors.mainColor,
                                    textColor: AppColors.purple,
                                    icon: SimpleIcons.github,
                                    text: 'github.com/khaledsawan',
                                    color: AppColors.purple),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                _openTelegram();
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: IconThanText(
                                    iconColor: AppColors.blue,
                                    iconBackColor: AppColors.mainColor,
                                    textColor: AppColors.blue,
                                    icon: Icons.telegram,
                                    text: 't.me/KHALEDSAWAN',
                                    color: AppColors.blue),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                _makingPhoneCall();
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: IconThanText(
                                    iconColor: AppColors.green1,
                                    iconBackColor: AppColors.mainColor,
                                    textColor: AppColors.green1,
                                    icon: Icons.contact_phone,
                                    text: '+963 0967184204',
                                    color: AppColors.blue),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.7 - 5,
                      height: height * 0.9,
                      child:  TapBarDefault(),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
