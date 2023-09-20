import 'dart:async';
import 'package:flutter/material.dart';
import 'package:khaledsawan/api/base_repo.dart';
import '../../utils/colors.dart';
import 'package:get/get.dart';
import '../../utils/responsive.dart';

class MePage extends StatefulWidget {
  const MePage({super.key});
  @override
  MePageState createState() => MePageState();
}

class MePageState extends State<MePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
        child: GetBuilder<BaseRepo>(builder: (controller) {
      return controller.isLoading
          ? Container()
          : Column(
              children: [
                _buildGreeting(width, controller),
                const SizedBox(height: 25),
                _buildIntroduction(width, controller),
                const Divider(),
                const SizedBox(height: 30),
                _buildSkills(width, controller),
                const SizedBox(height: 15),
                _buildAdditionalSkills(controller),
                const SizedBox(height: 30),
                _buildSoftSkills(width, controller),
                const SizedBox(height: 30),
                _buildActivitiesAndInterests(controller),
                const SizedBox(height: 30),
                _buildFooter(controller),
                const Divider(),
              ],
            );
    }));
  }

  Widget _buildGreeting(double width, BaseRepo controller) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 30, 0, 10),
      alignment: Alignment.topLeft,
      child: SlideFadeTransition(
        curve: Curves.elasticOut,
        delayStart: const Duration(milliseconds: 300),
        animationDuration: const Duration(milliseconds: 800),
        offset: 2.5,
        direction: Direction.horizontal,
        child: Text(
          controller.profileData.title!,
          style: TextStyle(
            fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 26),
            color: AppColors.textColor,
            shadows: const [
              Shadow(color: AppColors.white, offset: Offset(0.4, 0.1))
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIntroduction(double width, BaseRepo controller) {
    return Container(
      alignment: Alignment.topLeft,
      margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
      child: SlideFadeTransition(
        curve: Curves.elasticOut,
        delayStart: const Duration(milliseconds: 800),
        animationDuration: const Duration(milliseconds: 800),
        offset: 2.5,
        direction: Direction.vertical,
        child: Text(
          controller.profileData.supTitle!,
          style: TextStyle(
            fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 24),
            color: AppColors.textColor,
            shadows: const [
              Shadow(color: AppColors.white, offset: Offset(0.4, 0.1))
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSkills(double width, BaseRepo controller) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: _buildSkillDescription(
            controller.profileData.body!,
            width,
          ),
        ),
      ],
    );
  }

  Widget _buildSkillDescription(String text, double width) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 5, 0, 5),
      width: width * 0.7 - 95,
      child: SlideFadeTransition(
        curve: Curves.elasticOut,
        delayStart: const Duration(milliseconds: 900),
        animationDuration: const Duration(milliseconds: 700),
        offset: 2.5,
        direction: Direction.vertical,
        child: Text(
          text,
          textAlign: TextAlign.start,
          maxLines: 100,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize:
                  const AdaptiveTextSize().getadaptiveTextSize(context, 16),
              fontStyle: FontStyle.italic),
        ),
      ),
    );
  }

  Widget _buildAdditionalSkills(BaseRepo controller) {
    String text = controller.profileData.skills!;
    List<String> wordList = text.split(',');
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,

      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SlideFadeTransition(
          curve: Curves.elasticOut,
          delayStart: const Duration(milliseconds: 900),
          animationDuration: const Duration(milliseconds: 700),
          offset: 2.5,
          direction: Direction.vertical,
          child: Text(
            'Skills',
            textAlign: TextAlign.start,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize:
                  const AdaptiveTextSize().getadaptiveTextSize(context, 20),
              fontStyle: FontStyle.normal,
              color: AppColors.orangeend,
            ),
          ),
        ),
       
        Container(
          padding: const EdgeInsets.all(12),
          child: SlideFadeTransition(
            curve: Curves.elasticOut,
            delayStart: const Duration(milliseconds: 1000),
            animationDuration: const Duration(milliseconds: 800),
            offset: 2.5,
            direction: Direction.vertical,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(wordList.length, (index) {
                  return _buildAdditionalSkillDescription(wordList[index]);
                })),
          ),
        ),
      ],
    );
  }

  Widget _buildAdditionalSkillDescription(String text) {
    return Text(
      text,
      textAlign: TextAlign.start,
      style: TextStyle(
        fontSize: const AdaptiveTextSize().getadaptiveTextSize(context, 16),
        fontStyle: FontStyle.italic,
        color: Colors.white.withOpacity(0.5),
      ),
    );
  }

  Widget _buildSoftSkills(double width, BaseRepo controller) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        SlideFadeTransition(
          curve: Curves.elasticOut,
          delayStart: const Duration(milliseconds: 900),
          animationDuration: const Duration(milliseconds: 700),
          offset: 2.5,
          direction: Direction.vertical,
          child: Text(
            'SOFT SKILLS',
            style: TextStyle(
              fontSize:
                  const AdaptiveTextSize().getadaptiveTextSize(context, 18),
              fontStyle: FontStyle.normal,
              color: AppColors.textGreen,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: SlideFadeTransition(
            curve: Curves.elasticOut,
            delayStart: const Duration(milliseconds: 900),
            animationDuration: const Duration(milliseconds: 700),
            offset: 2.5,
            direction: Direction.vertical,
            child: Text(
              controller.profileData.softSkills!,
              maxLines: 4,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize:
                      const AdaptiveTextSize().getadaptiveTextSize(context, 12),
                  fontStyle: FontStyle.italic),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildActivitiesAndInterests(BaseRepo controller) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        SlideFadeTransition(
          curve: Curves.elasticOut,
          delayStart: const Duration(milliseconds: 900),
          animationDuration: const Duration(milliseconds: 700),
          offset: 2.5,
          direction: Direction.vertical,
          child: Text(
            'ACTIVITIES AND INTERESTS',
            style: TextStyle(
              fontSize:
                  const AdaptiveTextSize().getadaptiveTextSize(context, 14),
              fontStyle: FontStyle.normal,
              color: AppColors.green01,
            ),
          ),
        ),
        const SizedBox(width: 10),
        SlideFadeTransition(
          curve: Curves.elasticOut,
          delayStart: const Duration(milliseconds: 900),
          animationDuration: const Duration(milliseconds: 700),
          offset: 2.5,
          direction: Direction.vertical,
          child: Text(
            controller.profileData.activies!,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize:
                    const AdaptiveTextSize().getadaptiveTextSize(context, 12),
                fontStyle: FontStyle.italic),
          ),
        ),
      ],
    );
  }

  Widget _buildFooter(BaseRepo controller) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(controller.profileData.c!),
        Row(
          children: const [
            Text('Built with '),
            SizedBox(width: 8),
            Text(
              'Laravel',
              style: TextStyle(color: AppColors.red, fontSize: 16),
            ),
            Text(
              '&',
              style: TextStyle(color: AppColors.white, fontSize: 14),
            ),
            Text(
              'Flutter',
              style: TextStyle(color: AppColors.blue, fontSize: 16),
            ),
          ],
        ),
      ],
    );
  }
}

enum Direction { vertical, horizontal }

class SlideFadeTransition extends StatefulWidget {
  final Widget child;
  final double offset;
  final Curve curve;
  final Direction direction;
  final Duration delayStart;
  final Duration animationDuration;

  const SlideFadeTransition({
    super.key,
    required this.child,
    this.offset = 1.0,
    this.curve = Curves.easeIn,
    this.direction = Direction.vertical,
    this.delayStart = const Duration(milliseconds: 100),
    this.animationDuration = const Duration(milliseconds: 800),
  });

  @override
  SlideFadeTransitionState createState() => SlideFadeTransitionState();
}

class SlideFadeTransitionState extends State<SlideFadeTransition>
    with SingleTickerProviderStateMixin {
  late Animation<Offset> _animationSlide;
  late AnimationController _animationController;
  late Animation<double> _animationFade;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: widget.animationDuration,
    );

    if (widget.direction == Direction.vertical) {
      _animationSlide = Tween<Offset>(
              begin: Offset(0, widget.offset), end: const Offset(0, 0))
          .animate(CurvedAnimation(
        curve: widget.curve,
        parent: _animationController,
      ));
    } else {
      _animationSlide = Tween<Offset>(
              begin: Offset(widget.offset, 0), end: const Offset(0, 0))
          .animate(CurvedAnimation(
        curve: widget.curve,
        parent: _animationController,
      ));
    }

    _animationFade = Tween<double>(begin: -1.0, end: 1.0).animate(
      CurvedAnimation(
        curve: widget.curve,
        parent: _animationController,
      ),
    );

    Timer(widget.delayStart, () {
      _animationController.forward();
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animationFade,
      child: SlideTransition(
        position: _animationSlide,
        child: widget.child,
      ),
    );
  }
}
