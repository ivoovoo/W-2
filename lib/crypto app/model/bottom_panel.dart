// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../model/size_model.dart';
import '../screens/qr_code_screen.dart';

class BottomPanel extends StatefulWidget {
  const BottomPanel({super.key});


  @override
  _BottomPanelState createState() => _BottomPanelState();
}

class _BottomPanelState extends State<BottomPanel>{

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Container(
            width: getWidth(context, 430),
            height: getHeight(context, 420),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50)),
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(20, 23, 34, 1),
                    Color.fromRGBO(80, 92, 136, 0.01),
                  ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(23.0),
            child: ListView(
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: getWidth(context, 385),
                      height: getHeight(context, 118),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: getHeight(context, 15),
                              left: getWidth(context, 15),
                            ),
                            child: Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Your Ethereum address',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    inherit: false,
                                    fontSize: 16,
                                    color:
                                    Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  '0xF09242467c484',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    inherit: false,
                                    fontSize: 14,
                                    color:
                                    Color.fromRGBO(112, 122, 131, 1),
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  children: [
                                    Image.asset(
                                        width: getWidth(context, 20),
                                        height: getHeight(context, 20),
                                        'assets/images/png/eth.png'),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    const Text(
                                      'Balance: ',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        inherit: false,
                                        fontSize: 12,
                                        color: Color.fromRGBO(
                                            255, 255, 255, 1),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: const Text(
                                        '0.939 ETH',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w700,
                                          inherit: false,
                                          fontSize: 12,
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                          builder: (context) => const QrCodeScreen()),
                                    );
                                  },
                                  child: Container(
                                    width: getWidth(context, 40),
                                    height: getHeight(context, 40),
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color.fromRGBO(
                                          255, 255, 255, 0.05),
                                    ),
                                    child: SvgPicture.asset(
                                      'assets/images/svg/qr_code.svg',
                                      width: getWidth(context, 21),
                                      height: getHeight(context, 21),
                                      fit: BoxFit.scaleDown,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: getWidth(context, 10),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  width: getWidth(context, 40),
                                  height: getHeight(context, 40),
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromRGBO(
                                        255, 255, 255, 0.05),
                                  ),
                                  child: SvgPicture.asset(
                                    'assets/images/svg/copy_button.svg',
                                    width: getWidth(context, 21),
                                    height: getHeight(context, 21),
                                    fit: BoxFit.scaleDown,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: getHeight(context, 10),
                    ),
                    SizedBox(
                      width: getWidth(context, 385),
                      height: getHeight(context, 118),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: getHeight(context, 15),
                              left: getWidth(context, 15),
                            ),
                            child: Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Your Ethereum address',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    inherit: false,
                                    fontSize: 16,
                                    color:
                                    Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  'Fvp8410ekdbQWBV',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    inherit: false,
                                    fontSize: 14,
                                    color:
                                    Color.fromRGBO(112, 122, 131, 1),
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  children: [
                                    Image.asset(
                                        width: getWidth(context, 20),
                                        height: getHeight(context, 20),
                                        'assets/images/png/solana_logo.png'),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    const Text(
                                      'Balance: ',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        inherit: false,
                                        fontSize: 12,
                                        color: Color.fromRGBO(
                                            255, 255, 255, 1),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: const Text(
                                        '23 SOL',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w700,
                                          inherit: false,
                                          fontSize: 12,
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                          builder: (context) => const QrCodeScreen()),
                                    );
                                  },
                                  child: Container(
                                    width: getWidth(context, 40),
                                    height: getHeight(context, 40),
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color.fromRGBO(
                                          255, 255, 255, 0.05),
                                    ),
                                    child: SvgPicture.asset(
                                      'assets/images/svg/qr_code.svg',
                                      width: getWidth(context, 21),
                                      height: getHeight(context, 21),
                                      fit: BoxFit.scaleDown,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: getWidth(context, 10),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  width: getWidth(context, 40),
                                  height: getHeight(context, 40),
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromRGBO(
                                        255, 255, 255, 0.05),
                                  ),
                                  child: SvgPicture.asset(
                                    'assets/images/svg/copy_button.svg',
                                    width: getWidth(context, 21),
                                    height: getHeight(context, 21),
                                    fit: BoxFit.scaleDown,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: getHeight(context, 10),
                    ),
                    SizedBox(
                      width: getWidth(context, 385),
                      height: getHeight(context, 118),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: getHeight(context, 15),
                              left: getWidth(context, 15),
                            ),
                            child: Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Your Ethereum address',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    inherit: false,
                                    fontSize: 16,
                                    color:
                                    Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  'Fvp8410ekdbQWBV',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    inherit: false,
                                    fontSize: 14,
                                    color:
                                    Color.fromRGBO(112, 122, 131, 1),
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  children: [
                                    Image.asset(
                                        width: getWidth(context, 20),
                                        height: getHeight(context, 20),
                                        'assets/images/png/solana_logo.png'),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    const Text(
                                      'Balance: ',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        inherit: false,
                                        fontSize: 12,
                                        color: Color.fromRGBO(
                                            255, 255, 255, 1),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: const Text(
                                        '23 SOL',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w700,
                                          inherit: false,
                                          fontSize: 12,
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                          builder: (context) => const QrCodeScreen()),
                                    );
                                  },
                                  child: Container(
                                    width: getWidth(context, 40),
                                    height: getHeight(context, 40),
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color.fromRGBO(
                                          255, 255, 255, 0.05),
                                    ),
                                    child: SvgPicture.asset(
                                      'assets/images/svg/qr_code.svg',
                                      width: getWidth(context, 21),
                                      height: getHeight(context, 21),
                                      fit: BoxFit.scaleDown,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: getWidth(context, 10),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  width: getWidth(context, 40),
                                  height: getHeight(context, 40),
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromRGBO(
                                        255, 255, 255, 0.05),
                                  ),
                                  child: SvgPicture.asset(
                                    'assets/images/svg/copy_button.svg',
                                    width: getWidth(context, 21),
                                    height: getHeight(context, 21),
                                    fit: BoxFit.scaleDown,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: getHeight(context, 10),
                    ),
                    SizedBox(
                      width: getWidth(context, 385),
                      height: getHeight(context, 118),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: getHeight(context, 15),
                              left: getWidth(context, 15),
                            ),
                            child: Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Your Ethereum address',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                    inherit: false,
                                    fontSize: 16,
                                    color:
                                    Color.fromRGBO(255, 255, 255, 1),
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  'Fvp8410ekdbQWBV',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w400,
                                    inherit: false,
                                    fontSize: 14,
                                    color:
                                    Color.fromRGBO(112, 122, 131, 1),
                                  ),
                                ),
                                const SizedBox(height: 8),
                                Row(
                                  children: [
                                    Image.asset(
                                        width: getWidth(context, 20),
                                        height: getHeight(context, 20),
                                        'assets/images/png/solana_logo.png'),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    const Text(
                                      'Balance: ',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        inherit: false,
                                        fontSize: 12,
                                        color: Color.fromRGBO(
                                            255, 255, 255, 1),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {},
                                      child: const Text(
                                        '23 SOL',
                                        style: TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w700,
                                          inherit: false,
                                          fontSize: 12,
                                          color: Colors.blue,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                          builder: (context) => const QrCodeScreen()),
                                    );
                                  },
                                  child: Container(
                                    width: getWidth(context, 40),
                                    height: getHeight(context, 40),
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color.fromRGBO(
                                          255, 255, 255, 0.05),
                                    ),
                                    child: SvgPicture.asset(
                                      'assets/images/svg/qr_code.svg',
                                      width: getWidth(context, 21),
                                      height: getHeight(context, 21),
                                      fit: BoxFit.scaleDown,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: getWidth(context, 10),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  width: getWidth(context, 40),
                                  height: getHeight(context, 40),
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromRGBO(
                                        255, 255, 255, 0.05),
                                  ),
                                  child: SvgPicture.asset(
                                    'assets/images/svg/copy_button.svg',
                                    width: getWidth(context, 21),
                                    height: getHeight(context, 21),
                                    fit: BoxFit.scaleDown,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

