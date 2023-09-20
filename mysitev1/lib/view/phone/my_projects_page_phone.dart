import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:khaledsawan/api/base_repo.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../service/model/project_model.dart';

class MyProjectsPagePhone extends StatelessWidget {
  const MyProjectsPagePhone({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return GetBuilder<BaseRepo>(builder: (controller) {
      return AnimationLimiter(
        child: ListView.builder(
          // padding: EdgeInsets.all(width / 30),
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          itemCount: controller.profileData.projects.length,
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
                    child: InkWell(
                      onTap: () async {
                        var url =
                            Uri.parse(controller.profileData.projects[i].link!);
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 20),
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
                                      image: NetworkImage(controller
                                          .profileData.projects[i].img!))),
                            ),
                            SizedBox(
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Text(
                                          controller
                                              .profileData.projects[i].name!,
                                          style: const TextStyle(
                                            fontSize: 28,
                                            decoration:
                                                TextDecoration.underline,
                                          )),
                                    ),
                                    Text(
                                      textWidthBasis: TextWidthBasis.parent,
                                      maxLines: 100,
                                      controller.profileData.projects[i].body!,
                                      style: const TextStyle(
                                        fontSize: 16,
                                      ),
                                    ),
                                    const Divider(),
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
    });
  }
}
