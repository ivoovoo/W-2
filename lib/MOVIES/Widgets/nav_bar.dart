import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import '../../core/router/app_router.dart';
import '../Navigation_BLoC/navigation_bloc.dart';
import '../Navigation_BLoC/navigation_event.dart';

class NavBarWidget extends StatelessWidget {
  const NavBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      decoration: const BoxDecoration(
          color: Colors.transparent
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () {
              context.read<NavigationBloc>().add(GoToScreenA());
            },
            onLongPress: () => openFullScreenModal(context),
            child: SvgPicture.asset('assets/nav-icon.svg'),
          ),
          InkWell(
            onTap: () {
              context.read<NavigationBloc>().add(GoToScreenB());
            },
            child: SvgPicture.asset('assets/navbar.svg'),
          ),
          InkWell(
            onTap: () {
              context.read<NavigationBloc>().add(GoToScreenC());
            },
            child: SvgPicture.asset('assets/nav.svg'),
          ),
        ],
      ),
    );
  }
}
