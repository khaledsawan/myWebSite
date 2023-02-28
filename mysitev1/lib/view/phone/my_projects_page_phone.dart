import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../service/model/project_model.dart';

class MyProjectsPagePhone extends StatelessWidget {
  MyProjectsPagePhone({super.key});
  List<ProjectModel> list = [
    ProjectModel(
        title: 'Mashawiri ',
        description:
        'Mashawiri is a transportation company that has an app that allows riders to relay rides and drivers to charge fares and get paid. More specifically, Al Mashawry is a shared transportation company that hires independent contractors as drivers. It is one of the many services that today contribute to the sharing economy, providing a way to connect existing resources rather than providing the physical resources themselves. ,',
        image: 'image/mashawiri logo.jpg',
        url: 'https://play.google.com/store/apps/details?id=com.ma.ma_app_client'),
    ProjectModel(
        title: 'Mashawiri Driver',
        description:
        'An application for the driver of the transportation system that allows him to take trips to customers in the customer application ,',
        image: 'image/unnamed.webp',
        url: 'https://play.google.com/store/apps/details?id=com.ma.ma_app_driver'),
    ProjectModel(
        title: 'Memo Night',
        description:
            'Note for Android application and Web using Flutter and Firebase ,',
        image: 'image/note.png',
        url: 'https://memo-45e65.firebaseapp.com'),
    ProjectModel(
        title: 'Online Course',
        description:
            'Online Courses for all Students , Contained Teacher App for management Courses Online Courses for all Students , Contained Teacher App for management Courses Online Courses for all Students , Contained Teacher App for management Courses Online Courses for all Students , Contained Teacher App for management Courses Online Courses for all Students , Contained Teacher App for management Courses Online Courses for all Students , Contained Teacher App for management Courses Online Courses for all Students , Contained Teacher App for management Courses Online Courses for all Students , Contained Teacher App for management Courses Online Courses for all Students , Contained Teacher App for management Courses Online Courses for all Students , Contained Teacher App for management Courses Online Courses for all Students , Contained Teacher App for management Courses'
            ', also there is Admin panel but (Android apk) for management all System...',
        image: 'image/electronic school.png',
        url: 'https://github.com/khaledsawan/Online-Courses'),
    ProjectModel(
        title: 'Hungry!',
        description:
            'food delivery System frontEnd flutter backEnd php frameWork laravel with Admin panel',
        image: 'image/food.png',
        url: 'https://github.com/khaledsawan/Hungry-'),
    ProjectModel(
        title: 'Product App',
        description:
            'flutter project using laravel backend ,simple (Auth and crud)',
        image: 'image/ic_launcher.png',
        url: 'https://github.com/khaledsawan/Products_app-FrontEnd'),
    ProjectModel(
        title: 'Homii',
        description:
            'Due to the great impact of technology in human life and its presence in the smallest details of their lives, and with the increase in the number of service programs and their multiplicity and diversity in terms of their mechanism of work and their communication with the user and the environments they work with, we are today in an era of variables and speed, so we will constantly need to develop software that serves the human and develops his lifestyle and solves problems he encounters. Therefore, given that the future of the country and its reconstruction rests on the student’s burden, and the future of the student depends on their comfort and continuity, the idea of our project came to help the student to secure suitable housing at an appropriate price to help them complete their study journey in comfort and continuity, by collecting donations and offering discounts on rent prices to the student.',
        image: 'image/test.jpg',
        url: 'https://github.com/khaledsawan/Homii-'),
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return AnimationLimiter(
      child: ListView.builder(
        // padding: EdgeInsets.all(width / 30),
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        itemCount: list.length,
        itemBuilder: (BuildContext c, int i) {
          return AnimationConfiguration.staggeredList(
            position: i,
            delay: const Duration(milliseconds: 100),
            child: SlideAnimation(
              duration: const Duration(milliseconds: 2500),
              curve: Curves.fastLinearToSlowEaseIn,
              horizontalOffset: 30,
              verticalOffset: 300.0,
              child: FlipAnimation(
                duration: const Duration(milliseconds: 3000),
                curve: Curves.fastLinearToSlowEaseIn,
                flipAxis: FlipAxis.y,
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () async {
                      var url = Uri.parse(list[i].url!);
                      if (await canLaunchUrl(url)) {
                        await launchUrl(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                    child: Container(
                      margin: const EdgeInsets.symmetric(vertical: 30),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: width * 0.4,
                            height: width * 0.4,
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                  Radius.circular(20),
                                ),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(list[i].image!))),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Text(list[i].title!,
                                        style: const TextStyle(
                                          fontSize: 28,
                                          decoration: TextDecoration.underline,
                                        )),
                                  ),
                                  const Divider(),
                                  Text(
                                    textWidthBasis: TextWidthBasis.parent,
                                    maxLines: 100,
                                    list[i].description!,
                                    style: const TextStyle(
                                      fontSize: 16,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
