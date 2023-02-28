import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../../utils/colors.dart';

class PortfolioPage extends StatelessWidget {
  PortfolioPage({super.key});

  List<String> list = [
    'https://i.ibb.co/18QtZcZ/about-us.png',
    'https://i.ibb.co/SBTXBVH/Screenshot.jpg',
    'https://i.ibb.co/zHPqfTg/Screenshot.jpg',
    'https://i.ibb.co/NpMmVFb/Screenshot.jpg',
    'https://i.ibb.co/S737pKJ/Screenshot.jpg',
    'https://i.ibb.co/BqmRs00/Screenshot.jpg',
    'https://i.ibb.co/37JC5pX/Screenshot.jpg',
    'https://i.ibb.co/BTvdDJw/Screenshot.jpg',
    'https://i.ibb.co/XtVcxf8/Screenshot.jpg',
    'https://i.ibb.co/tHbNJLf/Screenshot.jpg',
    'https://i.ibb.co/FwKPVZk/Screenshot.jpg',
    'https://i.ibb.co/MkHp0Rd/Screenshot.jpg',
    'https://i.ibb.co/jfZ6RLg/Screenshot.jpg',
    'https://i.ibb.co/fGkJZNt/Screenshot.jpg',
    'https://i.ibb.co/Jsvhr5T/Screenshot-1661120026.png',
    'https://i.ibb.co/N7QwsdD/Screenshot-1661119936.png',
    'https://i.ibb.co/TYZGK8t/Screenshot-1661120019.png',
    'https://i.ibb.co/3S81H4P/logoname.png',
    'https://i.ibb.co/p4dqmN9/photo-2022-09-14-23-57-13.jpg',
    'https://i.ibb.co/L5dBLcT/Screenshot-2022-08-31-175545.png',
    'https://i.ibb.co/SP7nqtL/Screenshot-2022-09-14-224934.png',
    'https://i.ibb.co/rGfmRW6/Screenshot-2022-09-14-224947.png',
    'https://i.ibb.co/pRGx7F4/Screenshot-2022-09-14-224957.png',
    'https://i.ibb.co/PQqcjRz/Screenshot-20220615-152644.png',
    'https://i.ibb.co/19NStKZ/Screenshot-2022-09-01-022920.png',
    'https://i.ibb.co/2710QTY/Screenshot-2022-09-01-023034.png',
    'https://i.ibb.co/Zgn294r/Screenshot-2022-09-01-023046.png',
    'https://i.ibb.co/1dNCC6z/Screenshot-20220615-152720.png',
    'https://i.ibb.co/Ld94t1L/Screenshot-20220615-152743.png',
    'https://i.ibb.co/51685n7/Screenshot-20220615-152754.png',
    'https://i.ibb.co/hFfxCKb/Screenshot-20220615-152958.png',
    'https://i.ibb.co/6vRsCD3/Screenshot-20220615-153005.png',
    'https://i.ibb.co/G3vkB5H/Screenshot-20220615-153013.png',
    'https://i.ibb.co/6HdQspz/Screenshot-20220615-153023.png',
    'https://i.ibb.co/zZ2BGt7/Screenshot-20220615-152808.png',
    'https://i.ibb.co/B2nVsSr/Screenshot-20220615-152827.png',
    'https://i.ibb.co/gM5PWx9/Screenshot-20220615-152912.png',
    'https://i.ibb.co/wcGzRBm/Screenshot-20220615-153033.png',
  ];
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    int columnCount = 2;

    return AnimationLimiter(
      child: GridView.count(
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        padding: EdgeInsets.all(w / 60),
        crossAxisCount: columnCount,
        children: List.generate(
          list.length,
          (int index) {
            return AnimationConfiguration.staggeredGrid(
              position: index,
              duration: const Duration(milliseconds: 500),
              columnCount: columnCount,
              child: ScaleAnimation(
                duration: const Duration(milliseconds: 900),
                curve: Curves.fastLinearToSlowEaseIn,
                child: FadeInAnimation(
                  child: Container(
                    margin: const EdgeInsets.all(20),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: AppColors.mainColor,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        image:
                            DecorationImage(image: NetworkImage(list[index]))),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
