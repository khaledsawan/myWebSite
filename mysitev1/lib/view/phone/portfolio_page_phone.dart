import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:get/get.dart';
import 'package:khaledsawan/api/base_repo.dart';


class PortfolioPagePhone extends StatelessWidget {
  const PortfolioPagePhone({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BaseRepo>(builder: (controller) {
      return AnimationLimiter(
        child: GridView.count(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          crossAxisCount: 2,
          children: List.generate(
            controller.profileData.images.length,
            (int index) {
              return AnimationConfiguration.staggeredGrid(
                position: index,
                duration: const Duration(milliseconds: 500),
                columnCount: 2,
                child: ScaleAnimation(
                  duration: const Duration(milliseconds: 900),
                  curve: Curves.fastLinearToSlowEaseIn,
                  child: FadeInAnimation(
                    child: Container(
                      margin: const EdgeInsets.all(4),
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(12)),
                          image: DecorationImage(
                              image: NetworkImage(
                                  controller.profileData.images[index]))),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      );
    });
  }
}
