// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:mysitev1/utils/colors.dart';

class animatedText extends StatefulWidget {
  late String text;
  late bool page;

  animatedText({required this.text, required this.page, super.key});
  @override
  _animatedTextState createState() => _animatedTextState();
}

class _animatedTextState extends State<animatedText> {
  @override
  Widget build(BuildContext context) {
    return AnimatedDefaultTextStyle(
      style: widget.page
          ? const TextStyle(
              color: AppColors.white,
              fontSize: 20,
            )
          : const TextStyle(
              color: AppColors.hintColor,
              fontSize: 16,
            ),
      duration: const Duration(milliseconds: 1000),
      curve: Curves.elasticOut,
      child: Text(widget.text),
    );
  }
}
