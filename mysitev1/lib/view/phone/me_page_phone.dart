import 'dart:async';
import 'package:flutter/material.dart';
import '../../utils/colors.dart';

class MePage2 extends StatefulWidget {
  const MePage2({super.key});

  @override
  MePage2State createState() => MePage2State();
}

class MePage2State extends State<MePage2> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(10, 40, 0, 20),
            alignment: Alignment.topLeft,
            child: const SlideFadeTransition(
              curve: Curves.elasticOut,
              delayStart: Duration(milliseconds: 300),
              animationDuration: Duration(milliseconds: 800),
              offset: 2.5,
              direction: Direction.horizontal,
              child: Text('Hello!',
                  style: TextStyle(
                      fontSize: 34,
                      color: AppColors.textColor,
                      shadows: [
                        Shadow(color: AppColors.white, offset: Offset(0.4, 0.1))
                      ])),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            child: const SlideFadeTransition(
              curve: Curves.elasticOut,
              delayStart: Duration(milliseconds: 800),
              animationDuration: Duration(milliseconds: 800),
              offset: 2.5,
              direction: Direction.vertical,
              child: Text('Welcome to my webSite ...',
                  style: TextStyle(
                      fontSize: 22,
                      color: AppColors.textColor,
                      shadows: [
                        Shadow(color: AppColors.white, offset: Offset(0.4, 0.1))
                      ])),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SlideFadeTransition(
            curve: Curves.elasticOut,
            delayStart: const Duration(milliseconds: 1000),
            animationDuration: const Duration(milliseconds: 800),
            offset: 2.5,
            direction: Direction.vertical,
            child: Text(
                textAlign: TextAlign.start,
                maxLines: 100,
                'My name is Khaled Sawan. I am from Syria, Damascus. I was born on 07/01/2000. I study at the Faculty of Informatics Engineering at Damascus University, majoring in Software Engineering and Information Systems, in the fourth year. ',
                style: TextStyle(
                    fontSize: 16,
                    fontStyle: FontStyle.italic,
                    color: Colors.white.withOpacity(0.7))),
          ),
          const Divider(),
          const SizedBox(
            height: 10,
          ),
          Column(
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
                    textAlign: TextAlign.center,
                    maxLines: 100,
                    'Skills',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                        fontStyle: FontStyle.normal,
                        color: AppColors.orangeend)),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 5, 0, 5),

                    child: const SlideFadeTransition(
                      curve: Curves.elasticOut,
                      delayStart: Duration(milliseconds: 900),
                      animationDuration: Duration(milliseconds: 700),
                      offset: 2.5,
                      direction: Direction.vertical,
                      child: Text(
                          textAlign: TextAlign.start,
                          maxLines: 100,
                          'Full stack developer with Flutter & Android native Java as Frontend ,',
                          style: TextStyle(
                              fontSize: 18, fontStyle: FontStyle.normal)),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 5, 0, 5),
                    child: const SlideFadeTransition(
                      curve: Curves.elasticOut,
                      delayStart: Duration(milliseconds: 900),
                      animationDuration: Duration(milliseconds: 700),
                      offset: 2.5,
                      direction: Direction.vertical,
                      child: Text(
                          textAlign: TextAlign.start,
                          maxLines: 100,
                          'PHP framework , Laravel & Firebase as backend, fast Understanding business ',
                          style: TextStyle(
                              fontSize: 18, fontStyle: FontStyle.normal)),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 5, 0, 5),

                    child: const SlideFadeTransition(
                      curve: Curves.elasticOut,
                      delayStart: Duration(milliseconds: 900),
                      animationDuration: Duration(milliseconds: 700),
                      offset: 2.5,
                      direction: Direction.vertical,
                      child: Text(
                          textAlign: TextAlign.start,
                          maxLines: 100,
                          'requirements and translating them to them Technical and functional requirements.',
                          style: TextStyle(
                              fontSize: 18, fontStyle: FontStyle.normal)),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
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
                children: [
                  Text(
                      '• Knowledge in using AdobeXd and Transfer Design to programming view making Customer Happy.',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 22,
                          fontStyle: FontStyle.italic,
                          color: Colors.white.withOpacity(0.5))),
                  const SizedBox(
                    height: 10,
                  ),
                  Text('• Using Git and work with Team (Github & Gitlab).',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 22,
                          fontStyle: FontStyle.italic,
                          color: Colors.white.withOpacity(0.5))),
                  const SizedBox(
                    height: 10,
                  ),
                  Text('• Basic knowledge of agile Environment (scrum).',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 22,
                          fontStyle: FontStyle.italic,
                          color: Colors.white.withOpacity(0.5))),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                      '• Knowledge of programming languages such as C, C++, Java, PHP.',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 22,
                          fontStyle: FontStyle.italic,
                          color: Colors.white.withOpacity(0.5))),
                  const SizedBox(
                    height: 10,
                  ),
                  Text('• Testing System with specific Tools.',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 22,
                          fontStyle: FontStyle.italic,
                          color: Colors.white.withOpacity(0.5))),
                  const SizedBox(
                    height: 10,
                  ),
                  Text('• Deploy Apps to Google play & AppStore.',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 22,
                          fontStyle: FontStyle.italic,
                          color: Colors.white.withOpacity(0.5))),
                  const SizedBox(
                    height: 10,
                  ),
                  Text('• Deploy Laravel applications to production.',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 22,
                          fontStyle: FontStyle.italic,
                          color: Colors.white.withOpacity(0.5))),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
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
                    textAlign: TextAlign.center,
                    maxLines: 100,
                    'SOFT SKILLS',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontStyle: FontStyle.normal,
                        color: AppColors.textGreen)),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 5, 0, 5),

                child: const SlideFadeTransition(
                  curve: Curves.elasticOut,
                  delayStart: Duration(milliseconds: 900),
                  animationDuration: Duration(milliseconds: 700),
                  offset: 2.5,
                  direction: Direction.vertical,
                  child: Text(
                      textAlign: TextAlign.start,
                      maxLines: 100,
                      'COMMUNICATIONS _ OPEN-MINDEDNESS _ PROBLEM-SOLVING _ CRITICAL THINKING _ ACCOUNTABILITY _ ADAPTABILITY',
                      style:
                      TextStyle(fontSize: 18, fontStyle: FontStyle.normal)),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            children: [
              const SlideFadeTransition(
                curve: Curves.elasticOut,
                delayStart: Duration(milliseconds: 900),
                animationDuration: Duration(milliseconds: 700),
                offset: 2.5,
                direction: Direction.vertical,
                child: Text(
                    textAlign: TextAlign.center,
                    maxLines: 100,
                    'ACTIVITIES AND INTERESTS',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        fontStyle: FontStyle.normal,
                        color: AppColors.green01)),
              ),
              const SizedBox(
                width: 30,
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(10, 5, 0, 5),
                child: const SlideFadeTransition(
                  curve: Curves.elasticOut,
                  delayStart: Duration(milliseconds: 900),
                  animationDuration: Duration(milliseconds: 700),
                  offset: 2.5,
                  direction: Direction.vertical,
                  child: Text(
                      textAlign: TextAlign.start,
                      maxLines: 100,
                      'Travel  _  Learn&Teach  _  Gaming',
                      style:
                      TextStyle(fontSize: 18, fontStyle: FontStyle.normal)),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('© 2022'),
              Row(
                children: const [
                  Text('Built with '),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Laravel',
                    style: TextStyle(color: AppColors.red, fontSize: 20),
                  ),
                  Text(
                    '&',
                    style: TextStyle(color: AppColors.white, fontSize: 20),
                  ),
                  Text(
                    'Flutter',
                    style: TextStyle(color: AppColors.blue, fontSize: 20),
                  ),
                ],
              )
            ],
          ),
          const Divider(),
        ],
      ),
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
    this.delayStart = const Duration(seconds: 0),
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
