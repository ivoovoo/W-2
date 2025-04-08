// ignore_for_file: use_build_context_synchronously

import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';
import 'package:share_plus/share_plus.dart';
import 'package:social_network/crypto%20app/screens/qr_scanner_screen.dart';

import '../../Chess/Components/size_model.dart';


class QrCodeScreen extends StatefulWidget {
  const QrCodeScreen({super.key});

  @override
  State<QrCodeScreen> createState() => _QrCodeScreenState();
}

class _QrCodeScreenState extends State<QrCodeScreen> {
  String walletAdress = '1LNXzm7G5otzuZ5Ghu';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          colors: [
            Color.fromRGBO(0, 0, 0, 1),
            Color.fromRGBO(4, 0, 52, 1),
          ],
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: getHeight(context, 60),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: getWidth(context, 30),
                ),
                child: SizedBox(
                  width: getWidth(context, 16),
                  height: getHeight(context, 16),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset(
                      'assets/images/svg/back_button.svg',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              const Spacer(),
              const Text(
                'Receive',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Gotham',
                  inherit: false,
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.only(
                  right: getWidth(context, 30),
                ),
                child: SizedBox(
                  width: getWidth(context, 24),
                  height: getHeight(context, 24),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const MobileScannerSimple(),
                        ),
                      );
                    },
                    child: SvgPicture.asset(
                      'assets/images/svg/qr_camera.svg',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: getHeight(context, 120),
          ),
          Container(
            height: getHeight(context, 332),
            width: getWidth(context, 335),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(42),
            ),
            child: Stack(
              children: [
                Center(
                  child: SvgPicture.asset('assets/images/svg/qr.svg'),
                ),
                const Center(
                  child: Text(
                    '🍕',
                    style: TextStyle(
                      fontFamily: 'SpaceMono',
                      fontWeight: FontWeight.w700,
                      inherit: false,
                      fontSize: 50,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: getHeight(context, 30),
          ),
          const Text(
            'Wallet adress',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontFamily: 'Gotham',
              color: Colors.white,
              inherit: false,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: getHeight(context, 10),
          ),
          Text(
            walletAdress,
            style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontFamily: 'Gotham',
                color: Color.fromRGBO(255, 255, 255, 0.6),
                inherit: false,
                fontSize: 16),
          ),
          const Spacer(),
          SizedBox(
            width: getWidth(context, 374),
            height: getHeight(context, 53),
            child: FilledButton(
              onPressed: () async {
                Clipboard.setData(
                  ClipboardData(text: walletAdress),
                ).then(
                  (_) async {
                    await Flushbar(
                      message: 'Wallet adress copied to clipboard',
                      duration: const Duration(seconds: 2),
                      animationDuration: const Duration(milliseconds: 400),
                    ).show(context);
                  },
                );
              },
              style: const ButtonStyle(
                backgroundColor:
                    WidgetStatePropertyAll<Color>(Colors.transparent),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.copy_rounded),
                  SizedBox(
                    width: getWidth(context, 5),
                  ),
                  const Text(
                    'Copy address',
                    style: TextStyle(
                      fontFamily: 'SpaceMono',
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Colors.white,
                      inherit: false,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: getHeight(context, 10),
          ),
          Container(
            width: getWidth(context, 374),
            height: getHeight(context, 53),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(42),
              gradient: const LinearGradient(
                colors: [
                  Color.fromRGBO(66, 61, 120, 1),
                  Color.fromRGBO(30, 26, 86, 1),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: SwipeButton(
              onSwipeEnd: () {
                Navigator.pop(context);
              },
              thumbPadding: const EdgeInsets.all(3),
              thumb: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white,
              ),
              activeThumbColor: const Color.fromRGBO(46, 41, 101, 1),
              width: getWidth(context, 374),
              height: getHeight(context, 53),
              activeTrackColor: Colors.transparent,
              inactiveTrackColor: Colors.transparent,
              child: FilledButton(
                style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.transparent),
                ),
                onPressed: () {
                  Share.share(walletAdress);
                },
                child: Align(
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.ios_share_rounded),
                      SizedBox(
                        width: getWidth(context, 5),
                      ),
                      const Text(
                        'Share address',
                        style: TextStyle(
                          fontFamily: 'SpaceMono',
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Colors.white,
                          inherit: false,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: getHeight(context, 20),
          ),
        ],
      ),
    );
  }
}
