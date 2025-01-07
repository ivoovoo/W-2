import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:social_network/constants.dart';
import 'package:social_network/core/router/app_router.dart';
import 'package:social_network/core/router/app_router_names.dart';
import 'package:social_network/core/utils/token_funcs.dart';
import 'package:social_network/data.dart';
import 'package:social_network/features/profile/logic/profile_bloc.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          // EdgeInsets.fromLTRB(0, 10 * rw(context), 35, 10 * rw(context)),
          EdgeInsets.all(2 * rw(context)),
      decoration: BoxDecoration(
          gradient: const LinearGradient(
              colors: [AppColors.kLightBlueColor, AppColors.kLightGreenColor]),
          borderRadius: BorderRadius.circular(100)),
      child: IconButton(
        onPressed: () {
          context.read<ProfileBloc>().add(const ProfileEvent.signOut());
          // context.goNamed(AppRouterNames.authPage);
          // authNotifier.logout(); // Обновляет состояние в приложении
          // context.goNamed(AppRouterNames.authPage);
        },
        icon: const Icon(
          Icons.logout,
          color: Colors.white,
          size: 30,
        ),
      ),
    );
    /*Align(
        alignment: Alignment.bottomRight,
        child: Container(
          padding:
              // EdgeInsets.fromLTRB(0, 10 * rw(context), 35, 10 * rw(context)),
          EdgeInsets.all(2 * rw(context)),
          decoration: BoxDecoration(
              gradient: const LinearGradient(colors: [
                AppColors.lightBlueColor,
                AppColors.lightGreenColor
              ]),
              borderRadius: BorderRadius.circular(100)
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              color: Colors.white,
              size: 30,
            ),
          ),
        ));*/
  }
}
