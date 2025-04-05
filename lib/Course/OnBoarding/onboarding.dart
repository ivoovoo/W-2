import 'package:animated_weight_picker/animated_weight_picker.dart';
import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../NavBar/main_bar.dart';
import '../Style/style.dart';

class OnboardingCourseScreen extends StatefulWidget {
  @override
  _OnboardingCourseScreenState createState() => _OnboardingCourseScreenState();
}

class _OnboardingCourseScreenState extends State<OnboardingCourseScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    WeightSelectionScreen(),
    HeightSelectionScreen(),
    FinalScreen(),
  ];

  void _nextScreen() {
    if (_currentIndex < _screens.length - 1) {
      setState(() {
        _currentIndex++;
      });
    }
  }

  void _previousScreen() {
    if (_currentIndex > 0) {
      setState(() {
        _currentIndex--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 50),
            CustomTabBar(currentIndex: _currentIndex),
            Expanded(child: _screens[_currentIndex]),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: _previousScreen,
                    child: Container(
                      width: 78,
                      height: 78,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(
                          width: 0.5,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ),
                      child: Center(child: Icon(Icons.arrow_back_ios_new)),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: GestureDetector(
                      onTap: _nextScreen,
                      child: Container(
                        width: double.infinity,
                        height: 78,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          gradient: LinearGradient(
                            colors: [
                              Color.fromRGBO(38, 33, 53, 1),
                              Color.fromRGBO(111, 97, 155, 1),
                            ],
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                          ),
                        ),
                        child: _currentIndex == 2 ? InkWell(
                          onTap: () {
                            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => MainMenuScreen()));
                          },
                          child: Center(
                            child: Text('Start Now',style: Style().montserrat_stl.copyWith(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),),
                          ),
                        ) : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text( 
                              'Next',
                              style: Style().montserrat_stl.copyWith(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white.withOpacity(0.3),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white.withOpacity(0.6),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomTabBar extends StatelessWidget {
  final int currentIndex;

  CustomTabBar({required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        return Container(
          width: 52,
          height: 5,
          margin: EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            color:
                index == currentIndex
                    ? Color.fromRGBO(0, 0, 0, 1)
                    : Color.fromRGBO(209, 209, 209, 1),
            borderRadius: BorderRadius.circular(5),
          ),
        );
      }),
    );
  }
}

class WeightSelectionScreen extends StatefulWidget {
  @override
  State<WeightSelectionScreen> createState() => _WeightSelectionScreenState();
}

class _WeightSelectionScreenState extends State<WeightSelectionScreen> {
  final double min = 40;
  final double max = 110;
  String selectedValue = '';
  String switchkglb = 'lb';

  @override
  void initState() {
    selectedValue = min.toString();
    super.initState();
  }

  int _selectedSegment = 0;

  void _onValueChanged(int value) {
    setState(() {
      _selectedSegment = value;
      if (_selectedSegment == 0) {
        switchkglb = 'lb';
      } else {
        switchkglb = 'kg';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'What is your\nweight?',
          style: Style().montserrat_stl.copyWith(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: CustomSlidingSegmentedControl<int>(
            padding: 40,
            height: 45,
            children: {
              0: Text(
                'lb',
                style: Style().montserrat_stl.copyWith(
                  color:
                      _selectedSegment == 0
                          ? Color.fromRGBO(255, 255, 255, 1)
                          : Color.fromRGBO(210, 210, 210, 1),
                ),
              ),
              1: Text(
                'kg',
                style: Style().montserrat_stl.copyWith(
                  color:
                      _selectedSegment == 1
                          ? Color.fromRGBO(255, 255, 255, 1)
                          : Color.fromRGBO(210, 210, 210, 1),
                ),
              ),
            },
            onValueChanged: _onValueChanged,
            initialValue: _selectedSegment,
            thumbDecoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(38, 33, 53, 1),
                  Color.fromRGBO(111, 97, 155, 1),
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(100),
            ),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(100),
              border: Border.all(
                width: 0.5,
                color: Colors.black.withOpacity(0.5),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            width: double.infinity,
            height: 282,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color.fromRGBO(246, 243, 186, 1),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30.0,
                vertical: 50,
              ),
              child: AnimatedWeightPicker(
                dialHeight: 35,
                min: min,
                max: max,
                selectedValueStyle: Style().montserrat_stl.copyWith(
                  color: Colors.black,
                  fontSize: 45,
                ),

                dialColor: Colors.black,
                suffixTextColor: Colors.black,
                suffixText: switchkglb,
                squeeze: 1.5,
                onChange: (newValue) {
                  setState(() {
                    selectedValue = newValue;
                  });
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class HeightSelectionScreen extends StatefulWidget {
  @override
  State<HeightSelectionScreen> createState() => _HeightSelectionScreenState();
}

class _HeightSelectionScreenState extends State<HeightSelectionScreen> {
  final double min = 120;
  final double max = 220;
  String selectedValue = '';
  String switchkgpcm = 'inch';


  @override
  void initState() {
    selectedValue = min.toString();
    super.initState();
  }

  int _selectedSegment = 0;

  void _onValueChanged(int value) {
    setState(() {
      _selectedSegment = value;
      if (_selectedSegment == 0) {
        switchkgpcm = 'inch';
      } else {
        switchkgpcm = 'cm';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'What is your\nheight?',
          style: Style().montserrat_stl.copyWith(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: CustomSlidingSegmentedControl<int>(
            padding: 40,
            height: 45,
            children: {
              0: Text(
                'inches',
                style: Style().montserrat_stl.copyWith(
                  color:
                      _selectedSegment == 0
                          ? Color.fromRGBO(255, 255, 255, 1)
                          : Color.fromRGBO(210, 210, 210, 1),
                ),
              ),
              1: Text(
                'cm',
                style: Style().montserrat_stl.copyWith(
                  color:
                      _selectedSegment == 1
                          ? Color.fromRGBO(255, 255, 255, 1)
                          : Color.fromRGBO(210, 210, 210, 1),
                ),
              ),
            },
            onValueChanged: _onValueChanged,
            initialValue: _selectedSegment,
            thumbDecoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(38, 33, 53, 1),
                  Color.fromRGBO(111, 97, 155, 1),
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
              borderRadius: BorderRadius.circular(100),
            ),
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(100),
              border: Border.all(
                width: 0.5,
                color: Colors.black.withOpacity(0.5),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            width: double.infinity,
            height: 282,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color.fromRGBO(214, 235, 235, 1),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 30.0,
                vertical: 50,
              ),
              child: AnimatedWeightPicker(
                dialHeight: 35,
                min: min,
                max: max,
                selectedValueStyle: Style().montserrat_stl.copyWith(
                  color: Colors.black,
                  fontSize: 45,
                ),
                suffixText: switchkgpcm,
                dialColor: Colors.black,
                suffixTextColor: Colors.black,
                squeeze: 1.5,
                onChange: (newValue) {
                  setState(() {
                    selectedValue = newValue;
                  });
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class FinalScreen extends StatefulWidget {
  @override
  State<FinalScreen> createState() => _FinalScreenState();
}

class _FinalScreenState extends State<FinalScreen> {
  int selectedOption = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 30,),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'What do you want to\nacheive?',
            style: Style().montserrat_stl.copyWith(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'What you are going to select will\neffect your workout program',
            style: Style().montserrat_stl.copyWith(
              fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Color.fromRGBO(155, 155, 155, 1),
            ),
            textAlign: TextAlign.center,

          ),
        ),
        _buildRadioButton(1, 'Strength Training for Muscle Gain'),
        _buildRadioButton(2, 'High-Intensity Interval Training for Fat Loss'),
        _buildRadioButton(3, 'Cardiovascular Exercise for Fat Loss'),
        _buildRadioButton(4, 'Functional Training for Overall Fitness'),
      ],
    );
  }

  Widget _buildRadioButton(int value, String name) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedOption = value;
        });
      },
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(
                width: 2,
                color: selectedOption == value ? Colors.black : Colors.transparent,
              ),
            ),
            child: Center(
              child: Text(
                name,
                style: Style().montserrat_stl.copyWith(
                  fontSize: 12,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          Positioned(
            top: 5,
            right: 0,
            child: selectedOption == value ? Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(100),
            ),
              child:  Center(
                child: SvgPicture.asset('assets/Path.svg',color: Colors.white,),
              ) ,
          ): Container(),),
        ],
      ),
    );
  }
}
