import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../api/base_repo.dart';
import '../../utils/colors.dart';

class MePage2 extends StatefulWidget {
  const MePage2({Key? key}) : super(key: key);

  @override
  MePage2State createState() => MePage2State();
}

class MePage2State extends State<MePage2> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GetBuilder<BaseRepo>(builder: (controller) {
        return controller.isLoading
            ? Container()
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildHeader(controller),
                  const SizedBox(height: 10),
                  _buildIntroduction(controller),
                  const Divider(),
                  const SizedBox(height: 10),
                  _buildSkills(controller),
                  const SizedBox(height: 10),
                  _buildAdditionalSkills(controller),
                  const SizedBox(height: 20),
                  _buildSoftSkills(controller),
                  const SizedBox(height: 30),
                  _buildActivitiesAndInterests(controller),
                  const SizedBox(height: 30),
                  _buildFooter(controller),
                  const Divider(),
                ],
              );
      }),
    );
  }

  Widget _buildHeader(BaseRepo controller) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 40, 0, 20),
      alignment: Alignment.topLeft,
      child: SlideFadeTransition(
        curve: Curves.elasticOut,
        delayStart: const Duration(milliseconds: 300),
        animationDuration: const Duration(milliseconds: 800),
        offset: 2.5,
        direction: Direction.horizontal,
        child: Text(
          controller.profileData.title!,
          style: const TextStyle(
            fontSize: 34,
            color: AppColors.textColor,
            shadows: [Shadow(color: AppColors.white, offset: Offset(0.4, 0.1))],
          ),
        ),
      ),
    );
  }

  Widget _buildIntroduction(BaseRepo controller) {
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
          style: const TextStyle(
            fontSize: 22,
            color: AppColors.textColor,
            shadows: [Shadow(color: AppColors.white, offset: Offset(0.4, 0.1))],
          ),
        ),
      ),
    );
  }

  Widget _buildSkills(BaseRepo controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildSkillItem(controller.profileData.body!),
      ],
    );
  }

  Widget _buildSkillItem(String text) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 5, 0, 5),
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
          style: const TextStyle(fontSize: 17, fontStyle: FontStyle.normal),
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
        const SlideFadeTransition(
          curve: Curves.elasticOut,
          delayStart: Duration(milliseconds: 900),
          animationDuration: Duration(milliseconds: 700),
          offset: 2.5,
          direction: Direction.vertical,
          child: Text(
            'Skills',
            textAlign: TextAlign.start,
            maxLines: 100,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
              fontStyle: FontStyle.normal,
              color: AppColors.orangeend,
            ),
          ),
        ),
     
        Container(
          padding: const EdgeInsets.all(20),
          child: SlideFadeTransition(
            curve: Curves.elasticOut,
            delayStart: const Duration(milliseconds: 1000),
            animationDuration: const Duration(milliseconds: 800),
            offset: 2.5,
            direction: Direction.vertical,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
                  wordList.map((skill) => _buildSkillItem(skill)).toList(),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSoftSkills(BaseRepo controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        const SlideFadeTransition(
          curve: Curves.elasticOut,
          delayStart: Duration(milliseconds: 900),
          animationDuration: Duration(milliseconds: 700),
          offset: 2.5,
          direction: Direction.vertical,
          child: Text(
            'SOFT SKILLS',
            textAlign: TextAlign.center,
            maxLines: 100,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              fontStyle: FontStyle.normal,
              color: AppColors.textGreen,
            ),
          ),
        ),
        const SizedBox(width: 10),
        Container(
          margin: const EdgeInsets.fromLTRB(10, 5, 0, 5),
          child: SlideFadeTransition(
            curve: Curves.elasticOut,
            delayStart: const Duration(milliseconds: 900),
            animationDuration: const Duration(milliseconds: 700),
            offset: 2.5,
            direction: Direction.vertical,
            child: Text(
              controller.profileData.softSkills!,
              textAlign: TextAlign.start,
              maxLines: 100,
              style: const TextStyle(fontSize: 18, fontStyle: FontStyle.normal),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildActivitiesAndInterests(BaseRepo controller) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SlideFadeTransition(
          curve: Curves.elasticOut,
          delayStart: Duration(milliseconds: 900),
          animationDuration: Duration(milliseconds: 700),
          offset: 2.5,
          direction: Direction.vertical,
          child: Text(
            'ACTIVITIES AND INTERESTS',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              fontStyle: FontStyle.normal,
              color: AppColors.green01,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(20, 5, 0, 5),
          child: SlideFadeTransition(
            curve: Curves.elasticOut,
            delayStart: const Duration(milliseconds: 900),
            animationDuration: const Duration(milliseconds: 700),
            offset: 2.5,
            direction: Direction.vertical,
            child: Text(
              controller.profileData.activies!,
              textAlign: TextAlign.start,
              maxLines: 100,
              style:const TextStyle(fontSize: 18, fontStyle: FontStyle.normal),
            ),
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
            SizedBox(width: 4),
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
        )
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
    Key? key,
    required this.child,
    this.offset = 1.0,
    this.curve = Curves.easeIn,
    this.direction = Direction.vertical,
    this.delayStart = const Duration(seconds: 0),
    this.animationDuration = const Duration(milliseconds: 800),
  }) : super(key: key);

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
        begin: Offset(0, widget.offset),
        end: const Offset(0, 0),
      ).animate(CurvedAnimation(
        curve: widget.curve,
        parent: _animationController,
      ));
    } else {
      _animationSlide = Tween<Offset>(
        begin: Offset(widget.offset, 0),
        end: const Offset(0, 0),
      ).animate(CurvedAnimation(
        curve: widget.curve,
        parent: _animationController,
      ));
    }

    _animationFade =
        Tween<double>(begin: -1.0, end: 1.0).animate(CurvedAnimation(
      curve: widget.curve,
      parent: _animationController,
    ));

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
