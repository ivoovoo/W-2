import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


import '../dialog_windows/key_dialog.dart';
import '../dialog_windows/start_level_dialog.dart';
import '../dialog_windows/tasks_dialog.dart';
import '../size_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        flexibleSpace: SizedBox(
          child: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/png/home_appbar.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: getWidth(context, 25), top: getHeight(context, 10)),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: InkWell(
                    onTap: () {},
                    child: SizedBox(
                      width: getWidth(context, 85),
                      height: getWidth(context, 65),
                      child: SvgPicture.asset(
                          'assets/images/svg/turkmenistan_flag.svg'),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: getHeight(context, 10),),
                child: Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: getHeight(context, 50),
                    width: getWidth(context, 120),
                    child: Stack(
                      children: [
                        SvgPicture.asset('assets/images/svg/gold_appbar.svg'),
                        Padding(
                          padding: EdgeInsets.only(left: getWidth(context, 50), top: getWidth(context, 20)),
                          child: const Text(
                            '100',
                            style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'GROBOLD',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: EdgeInsets.only(left: getWidth(context, 85), top: getHeight(context, 15)),
                            child:
                                SvgPicture.asset('assets/images/svg/plus.svg'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(left: getWidth(context, 270), top: getHeight(context, 10)),
                  child: InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => const KeyDialog(),
                      );
                    },
                    child: SizedBox(
                      height: getHeight(context, 60),
                      width: getWidth(context, 140),
                      child: Stack(
                        children: [
                          SvgPicture.asset('assets/images/svg/key_appbar.svg'),
                           Padding(
                            padding: EdgeInsets.only(left: getWidth(context, 35), top: getHeight(context, 23)),
                            child: const Text(
                              '100',
                              style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontFamily: 'GROBOLD',
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/png/home_bg.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(left: getWidth(context, 10), right: getWidth(context, 10), bottom: getHeight(context, 10)),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(
                      child: InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => const StartLevelDialog(),
                          );
                        },
                        child: Stack(
                          children: [
                            SvgPicture.asset(
                                'assets/images/svg/level_button1.svg',
                                height: getHeight(context, 65)),
                            Padding(
                              padding: EdgeInsets.only(left: getWidth(context, 50), top: getHeight(context, 20)),
                              child: const Text(
                                'Level 1',
                                style: TextStyle(
                                  color: Color.fromRGBO(48, 79, 0, 1),
                                  fontFamily: 'GROBOLD',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      child: InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => const TasksDialog(),
                          );
                        },
                        child: Stack(
                          children: [
                            SvgPicture.asset(
                                'assets/images/svg/level_button1.svg',
                                height: getHeight(context, 65)),
                            Padding(
                              padding: EdgeInsets.only(left: getWidth(context, 30), top: getHeight(context, 15)),
                              child: const Text(
                                'zone 1',
                                style: TextStyle(
                                  color: Color.fromRGBO(48, 79, 0, 1),
                                  fontFamily: 'GROBOLD',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                             Padding(
                              padding: EdgeInsets.only(top: getHeight(context, 40), left: getWidth(context, 15)),
                              child: const ProgressIndicatorExample(
                                currentStep: 2,
                                totalSteps: 10,
                                indicatorWidth: 120,
                              ),
                            ),
                            Padding(
                              padding:
                                   EdgeInsets.only(left: getWidth(context, 110), top: getHeight(context, 10)),
                              child: SvgPicture.asset(
                                  'assets/images/svg/chest.svg',
                                  height: getHeight(context, 45)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 160),
                              child: SizedBox(
                                height: getHeight(context, 20),
                                width: getWidth(context, 20),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromRGBO(255, 255, 255, 1),
                                    border: Border.all(
                                      width: 2,
                                      color:
                                          const Color.fromRGBO(255, 146, 0, 1),
                                    ),
                                    borderRadius: BorderRadius.circular(11),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.only(top: 3, left: 5),
                                    child: Text(
                                      '2',
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Color.fromRGBO(48, 79, 0, 1),
                                        fontFamily: 'GROBOLD',
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class ProgressIndicatorExample extends StatelessWidget {
  final int currentStep;
  final int totalSteps;
  final double indicatorWidth;

  const ProgressIndicatorExample(
      {super.key,
      required this.currentStep,
      required this.totalSteps,
      required this.indicatorWidth});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            width: indicatorWidth,
            child: LinearProgressIndicator(
              value: currentStep / totalSteps,
              borderRadius: BorderRadius.circular(3),
              minHeight: 12,
              valueColor: const AlwaysStoppedAnimation<Color>(
                Color.fromRGBO(255, 146, 0, 1),
              ),
              backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
            ),
          ),
          Text(
            '$currentStep/$totalSteps',
            style: const TextStyle(
              color: Color.fromRGBO(48, 79, 0, 1),
              fontFamily: 'GROBOLD',
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
