import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../BLoC/bloc.dart';
import '../BLoC/bloc_events.dart';
import '../Models/color_button_model.dart';
import '../Theme/theme.dart';

class Subscription extends StatefulWidget {
  const Subscription({super.key});

  @override
  State<Subscription> createState() => _SubscriptionState();
}

class _SubscriptionState extends State<Subscription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.blue,
              Colors.purple,
            ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                SvgPicture.asset('assets/pro icon.svg'),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Get premium today',
                  style: Style.txtStyle.copyWith(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  'Remove ads and unlock all location',
                  style: Style.txtStyle.copyWith(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: const Color.fromRGBO(255, 255, 255, 0.7),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SvgPicture.asset('assets/detail.svg'),
                const SizedBox(
                  height: 20,
                ),
                const ColorButtonModel(
                  txtMonth: '1 Month',
                  txtPrice: 'Total price \$9.99',
                  txtCost: '0.99',
                ),
                const SizedBox(
                  height: 20,
                ),
                const ColorButtonModel(
                  txtMonth: '6 Month',
                  txtPrice: 'Total price \$54.99',
                  txtCost: '2.99',
                ),
                const SizedBox(
                  height: 20,
                ),
                const ColorButtonModel(
                  txtMonth: '12 Month',
                  txtPrice: 'Total price \$84.99',
                  txtCost: '4.99',
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  child: SvgPicture.asset('assets/lbutton.svg'),
                ),
              ],
            ),
          ),
          PreferredSize(
            preferredSize: const Size.fromHeight(10),
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: IconButton(
                icon: const Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () {
                  context.read<NavigationBloc>().add(GoToScreenA());
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
