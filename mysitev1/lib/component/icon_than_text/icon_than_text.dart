import 'package:flutter/material.dart';
import '../../utils/colors.dart';
import '../App_Icons/app_icons.dart';


class IconThanText extends StatelessWidget {
  IconData icon;
  double? width;
  double? iconSize;
  double? sizedWidth;
  double? leftPadding;
  double? height;
  EdgeInsets? margin;
  EdgeInsets? padding;
  int? maxLine;
  Color color;
  Color textColor;
  Color? iconColor;
  Color? iconBackColor;
  String text;
  IconThanText(
      {Key? key,
      this.width,
      this.height,
      this.iconSize=24,
      this.sizedWidth=5,
      this.iconColor=AppColors.iconColor,
      this.iconBackColor=AppColors.mainColor,
      this.margin=const EdgeInsets.only(left: 8,right: 8),
      this.padding=const EdgeInsets.only(left: 4, right: 4, top: 2, bottom: 2),
      this.maxLine,
      required this.icon,
      required this.text,
      required this.color,
      this.textColor = Colors.black54})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding:  padding,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.mainColor),

    ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            AppIcons(
              icon: icon,
              iconSize: iconSize!,
              iconColor: iconColor!,
              backgruondcolor: iconBackColor!,
            ),
             SizedBox(
              width: sizedWidth,
            ),
            Text(text,style: TextStyle(color: textColor,fontSize: 16,fontWeight: FontWeight.w400),)
          ],
        ),
      ),
    );
  }
}
