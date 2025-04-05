import 'dart:async';

import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/widgets/gradient_text.dart';
import '../BLoC_Country/country_bloc.dart';
import '../BLoC_Country/country_state.dart';
import '../Theme/theme.dart';
import 'model_model.dart';


class CircularButton extends StatefulWidget {
  final String? selectedOption;

  const CircularButton({
    super.key,
    this.selectedOption,
  });

  @override
  _CircularButtonState createState() => _CircularButtonState();
}

class _CircularButtonState extends State<CircularButton>
    with SingleTickerProviderStateMixin {
  Timer? _timer;
  int _elapsedTime = 0;
  bool _isRunning = false;
  late AnimationController _controller;
  late Animation<double> _animation;
  bool _isAnimating = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    );

    _animation = Tween<double>(begin: 0.0, end: 100.0).animate(_controller);
  }

  void _startStopwatch() {
    if (_isRunning) return;
    _isRunning = true;
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        _elapsedTime++;
      });
    });
    if (!_isAnimating) {
      _isAnimating = true;
      _controller.forward(from: 0.0).then((_) {
        _isAnimating = false;
      });
    }
  }

  void _stopStopwatch() {
    _controller.stop();
    _controller.value = 0.0;

    if (_timer != null) {
      _timer!.cancel();
      setState(() {
        _isRunning = false;
        _isAnimating = false;
      });
    }
  }

  void _resetStopwatch() {
    _stopStopwatch();
    setState(() {
      _elapsedTime = 0;
    });
  }

  String _formatTime(int seconds) {
    int hours = seconds ~/ 3600;
    int minutes = (seconds % 3600) ~/ 60;
    int secs = seconds % 60;
    return '${_twoDigits(hours)}:${_twoDigits(minutes)}:${_twoDigits(secs)}';
  }

  String _twoDigits(int n) {
    return n.toString().padLeft(2, '0');
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CountryBloc, CountryState>(builder: (context, state) {
      return Column(
        children: [
          Text(
            _formatTime(_elapsedTime),
            style: Style.txtStyle.copyWith(
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
          ),
          Container(
            height: 72,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(listOfCountries[state.countryId].flag),
                SizedBox(
                  width: 20,
                ),
                GradientText(
                  listOfCountries[state.countryId].name,
                  style: Style.txtStyle.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 35,
                  ),
                  gradient: const LinearGradient(
                    colors: [Colors.blue, Colors.purple],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Connect!',
            style: Style.txtStyle.copyWith(
              fontWeight: FontWeight.w700,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Center(
            child: GestureDetector(
              onTap: _isRunning ? _resetStopwatch : _startStopwatch,
              child: Stack(

                alignment: Alignment.center,
                children: [
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 350),
                    width: 220,
                    height: 220,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: _isRunning
                          ? const LinearGradient(
                              colors: [
                                Colors.purple,
                                Colors.blue,
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            )
                          : null,
                      border: _isRunning
                          ? null
                          : Border.all(color: Colors.white, width: 18),
                    ),
                  ),
                  Container(
                    width: 184,
                    height: 184,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                  ),
                  SvgPicture.asset(
                    'assets/emo.svg',
                    width: 64,
                    height: 64,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    SvgPicture.asset('assets/стрелка_вниз.svg'),
                    SizedBox(
                      width: 17,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            AnimatedBuilder(
                              animation: _animation,
                              builder: (context, child) {
                                return Text(
                                  _animation.value.toStringAsFixed(0),
                                  style: Style.txtStyle.copyWith(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                  ),
                                );
                              },
                            ),
                            Text(
                              ' mв/s',
                              style: Style.txtStyle.copyWith(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Download',
                          style: Style.txtStyle.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: 40,
                ),
                SvgPicture.asset('assets/Line 1.svg'),
                SizedBox(
                  width: 40,
                ),
                Row(
                  children: [
                    SvgPicture.asset('assets/Group.svg'),
                    SizedBox(
                      width: 17,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            AnimatedBuilder(
                              animation: _animation,
                              builder: (context, child) {
                                return Text(
                                  _animation.value.toStringAsFixed(0),
                                  style: Style.txtStyle.copyWith(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 16,
                                  ),
                                );
                              },
                            ),
                            Text(
                              ' мв/s',
                              style: Style.txtStyle.copyWith(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          'Upload',
                          style: Style.txtStyle.copyWith(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: 15,
                ),
              ],
            ),
          ),
        ],
      );
    });
  }
}
