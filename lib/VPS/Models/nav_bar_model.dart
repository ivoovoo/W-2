import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../core/router/app_router.dart';
import '../BLoC/bloc.dart';
import '../BLoC/bloc_events.dart';


class NavBarModel extends StatefulWidget {
  const NavBarModel({
    super.key,
  });

  @override
  State<NavBarModel> createState() => _NavBarModelState();
}

class _NavBarModelState extends State<NavBarModel>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);

    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _animation,
        builder: (context, child) {
          return Container(
            height: 60,
            width: 300,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.lerp(Colors.blue, Colors.purple, _animation.value)!,
                  Color.lerp(Colors.purple, Colors.blue, _animation.value)!
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(50),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      child: SvgPicture.asset('assets/home.svg'),
                      onTap: () {
                        context.read<NavigationBloc>().add(GoToScreenA());
                      },
                      onLongPress: () => openFullScreenModal(context),
                    ),
                    const SizedBox(
                      width: 70,
                    ),
                    InkWell(
                      child: SvgPicture.asset('assets/Subtract.svg'),
                      onTap: () {
                        context.read<NavigationBloc>().add(GoToScreenB());
                      },
                    ),
                    const SizedBox(
                      width: 70,
                    ),
                    InkWell(
                      child: SvgPicture.asset('assets/Union.svg'),
                      onTap: () {
                        context.read<NavigationBloc>().add(GoToScreenC());
                      },
                    ),
                  ],
                ),
              ],
            ),
          );
        });
  }
}
