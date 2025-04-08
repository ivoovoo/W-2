

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import '../../Chess/Components/size_model.dart';
import '../model/bottom_panel.dart';
import '../model/crypto.dart';
import '../model/gradient_progress_bar.dart';
import 'history_screen.dart';

class SwapScreen extends StatefulWidget {
  const SwapScreen({super.key});

  @override
  State<SwapScreen> createState() => _SwapScreenState();
}

class _SwapScreenState extends State<SwapScreen> {
  List<Crypto> cryptoSwap = [
    Crypto(
      currencyShortname: 'ETH',
      currencyName: 'Ethereum',
      currencyImage: 'assets/images/png/eth.png',
      currencyBalance: 0.382,
    ),
    Crypto(
      currencyShortname: 'BTC',
      currencyName: 'Bitcoin',
      currencyImage: 'assets/images/png/btc.png',
      currencyBalance: 0,
    ),
  ];

  bool isBottomPanelVisible = false;
  bool isCustomKeyboardVisible = false;
  bool isSwapped = false;
  double ethToUSDT = 1688.23;
  double btcToUSDT = 98688.23;

  String _inputText = '0';

  void _onKeyPressed(String value) {
    setState(
      () {
        if (_inputText.isNotEmpty && _inputText == '0' && value == '0') {
          _inputText = '0.0';
        } else {
          _inputText += value;
        }
      },
    );
  }

  void _onDeletePressed() {
    setState(() {
      if (_inputText.isNotEmpty) {
        _inputText = _inputText.substring(0, _inputText.length - 1);
      }
    });
  }

  Widget _buildKeyboardButton(String value) {
    return SizedBox(
      width: getWidth(context, 120),
      height: getHeight(context, 50),
      child: ElevatedButton(
        onPressed: () => _onKeyPressed(value),
        style: const ButtonStyle(
          overlayColor: WidgetStatePropertyAll(Colors.transparent),
          backgroundColor: WidgetStatePropertyAll(Colors.transparent),
          shadowColor: WidgetStatePropertyAll(Colors.transparent),
        ),
        child: Text(
          value,
          style: const TextStyle(
            fontFamily: 'Space Mono',
            fontWeight: FontWeight.w700,
            fontSize: 25,
            color: Color.fromRGBO(255, 255, 255, 1),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromRGBO(11, 10, 15, 1),
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
                'Swap',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Gotham',
                  inherit: false,
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.only(
                  right: getWidth(context, 30),
                ),
                child: SizedBox(
                  width: getWidth(context, 16),
                  height: getHeight(context, 16),
                  child: GestureDetector(
                    onTap: () {},
                    child: const Icon(
                      Icons.refresh,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: getHeight(context, 20),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: getWidth(context, 25),
              right: getWidth(context, 25),
            ),
            child: Container(
              width: getWidth(context, 380),
              height: getHeight(context, 379),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromRGBO(20, 23, 34, 1),
                    Color.fromRGBO(80, 92, 136, 0.01),
                  ],
                ),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: getHeight(context, 300),
                    child: Column(
                      children: [
                        SizedBox(
                          height: getHeight(context, 15),
                        ),
                        Container(
                          width: getWidth(context, 340),
                          height: getHeight(context, 111),
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(0, 0, 0, 1),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'You sell',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        inherit: false,
                                        fontSize: 12,
                                        color: Color.fromRGBO(112, 122, 131, 1),
                                      ),
                                    ),
                                    const Spacer(),
                                    Text(
                                      'Balance: ${isSwapped ? cryptoSwap[1].currencyBalance : cryptoSwap[0].currencyBalance}',
                                      style: const TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        inherit: false,
                                        fontSize: 12,
                                        color: Color.fromRGBO(112, 122, 131, 1),
                                      ),
                                    ),
                                    SizedBox(
                                      width: getWidth(context, 4),
                                    ),
                                    SizedBox(
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            //     _inputText =
                                            //          '${isSwapped ? cryptoSwap[1].currencyBalance : cryptoSwap[0].currencyBalance}';
                                          });
                                        },
                                        child: const Text(
                                          'MAX',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w700,
                                            inherit: false,
                                            fontSize: 12,
                                            color: Colors.blue,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      '${isSwapped ? cryptoSwap[1].currencyImage : cryptoSwap[0].currencyImage}',
                                    ),
                                    SizedBox(
                                      width: getWidth(context, 8),
                                    ),
                                    Text(
                                      '${isSwapped ? cryptoSwap[1].currencyShortname : cryptoSwap[0].currencyShortname}',
                                      style: const TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        inherit: false,
                                        fontSize: 24,
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(
                                          () {
                                            if (isCustomKeyboardVisible) {
                                              isCustomKeyboardVisible =
                                                  !isCustomKeyboardVisible;
                                              isBottomPanelVisible =
                                                  !isBottomPanelVisible;
                                              if (_inputText.isEmpty &&
                                                  isCustomKeyboardVisible ==
                                                      false) {
                                                _inputText = '0';
                                              }
                                            } else {
                                              isBottomPanelVisible =
                                                  !isBottomPanelVisible;
                                            }
                                          },
                                        );
                                      },
                                      child: const Icon(
                                        Icons.keyboard_arrow_down,
                                        color: Color.fromRGBO(167, 168, 169, 1),
                                      ),
                                    ),
                                    const Spacer(),
                                    GestureDetector(
                                      onTap: () {
                                        setState(
                                          () {
                                            if (isBottomPanelVisible) {
                                              isBottomPanelVisible =
                                                  !isBottomPanelVisible;
                                              isCustomKeyboardVisible =
                                                  !isCustomKeyboardVisible;
                                              if (_inputText.isEmpty &&
                                                  isCustomKeyboardVisible ==
                                                      false) {
                                                _inputText = '0';
                                              }
                                            } else {
                                              isCustomKeyboardVisible =
                                                  !isCustomKeyboardVisible;
                                              if (_inputText.isEmpty &&
                                                  isCustomKeyboardVisible ==
                                                      false) {
                                                _inputText = '0';
                                              }
                                            }
                                          },
                                        );
                                      },
                                      child: Text(
                                        _inputText,
                                        style: ((double.tryParse(_inputText) ??
                                                    0) >
                                                0)
                                            ? const TextStyle(
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500,
                                                inherit: false,
                                                fontSize: 24,
                                                color: Colors.white,
                                              )
                                            : const TextStyle(
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500,
                                                inherit: false,
                                                fontSize: 24,
                                                color: Color.fromRGBO(
                                                    112, 122, 131, 1),
                                              ),
                                      ),
                                    ),
                                    // Text From Custom Keyboard Will Be Here
                                  ],
                                ),
                                const Spacer(),
                                Row(
                                  children: [
                                    Text(
                                      '${isSwapped ? cryptoSwap[1].currencyName : cryptoSwap[0].currencyName}',
                                      style: const TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        inherit: false,
                                        fontSize: 12,
                                        color: Color.fromRGBO(112, 122, 131, 1),
                                      ),
                                    ),
                                    const Spacer(),
                                    Text(
                                      '${isSwapped ? btcToUSDT : ethToUSDT} USDT',
                                      style: const TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        inherit: false,
                                        fontSize: 12,
                                        color: Color.fromRGBO(112, 122, 131, 1),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: getHeight(context, 10),
                        ),
                        Container(
                          width: getWidth(context, 340),
                          height: getHeight(context, 111),
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(15),
                            border: const GradientBoxBorder(
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color.fromRGBO(249, 45, 143, 1),
                                  Color.fromRGBO(45, 118, 249, 1),
                                ],
                              ),
                              width: 2,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'You buy',
                                      style: TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        inherit: false,
                                        fontSize: 12,
                                        color: Color.fromRGBO(112, 122, 131, 1),
                                      ),
                                    ),
                                    const Spacer(),
                                    Text(
                                      'Balance: ${isSwapped ? cryptoSwap[0].currencyBalance : cryptoSwap[1].currencyBalance}',
                                      style: const TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        inherit: false,
                                        fontSize: 12,
                                        color: Color.fromRGBO(112, 122, 131, 1),
                                      ),
                                    ),
                                    SizedBox(
                                      width: getWidth(context, 4),
                                    ),
                                    SizedBox(
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            //    _inputText =
                                            //       '${isSwapped ? cryptoSwap[0].currencyBalance : cryptoSwap[1].currencyBalance}';
                                          });
                                        },
                                        child: const Text(
                                          'MAX',
                                          style: TextStyle(
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w700,
                                            inherit: false,
                                            fontSize: 12,
                                            color: Colors.blue,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      '${isSwapped ? cryptoSwap[0].currencyImage : cryptoSwap[1].currencyImage}',
                                    ),
                                    SizedBox(
                                      width: getWidth(context, 8),
                                    ),
                                    Text(
                                      '${isSwapped ? cryptoSwap[0].currencyShortname : cryptoSwap[1].currencyShortname}',
                                      style: const TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        inherit: false,
                                        fontSize: 24,
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(
                                          () {
                                            if (isCustomKeyboardVisible) {
                                              isCustomKeyboardVisible =
                                                  !isCustomKeyboardVisible;
                                              isBottomPanelVisible =
                                                  !isBottomPanelVisible;
                                              if (_inputText.isEmpty &&
                                                  isCustomKeyboardVisible ==
                                                      false) {
                                                _inputText = '0';
                                              }
                                            } else {
                                              isBottomPanelVisible =
                                                  !isBottomPanelVisible;
                                            }
                                          },
                                        );
                                      },
                                      child: const Icon(
                                        Icons.keyboard_arrow_down,
                                        color: Color.fromRGBO(167, 168, 169, 1),
                                      ),
                                    ),
                                    const Spacer(),
                                    GestureDetector(
                                      onTap: () {
                                        setState(
                                          () {
                                            if (isBottomPanelVisible) {
                                              isBottomPanelVisible =
                                                  !isBottomPanelVisible;
                                              isCustomKeyboardVisible =
                                                  !isCustomKeyboardVisible;
                                              if (_inputText.isEmpty &&
                                                  isCustomKeyboardVisible ==
                                                      false) {
                                                _inputText = '0';
                                              }
                                            } else {
                                              isCustomKeyboardVisible =
                                                  !isCustomKeyboardVisible;
                                            }
                                          },
                                        );
                                      },
                                      child: Text(
                                        _inputText,
                                        style: ((double.tryParse(_inputText) ??
                                                    0) >
                                                0)
                                            ? const TextStyle(
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500,
                                                inherit: false,
                                                fontSize: 24,
                                                color: Colors.white,
                                              )
                                            : const TextStyle(
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.w500,
                                                inherit: false,
                                                fontSize: 24,
                                                color: Color.fromRGBO(
                                                    112, 122, 131, 1),
                                              ),
                                      ),
                                    ),
                                    // Text From Custom Keyboard Will Be Here
                                  ],
                                ),
                                const Spacer(),
                                Row(
                                  children: [
                                    Text(
                                      '${isSwapped ? cryptoSwap[0].currencyName : cryptoSwap[1].currencyName}',
                                      style: const TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        inherit: false,
                                        fontSize: 12,
                                        color: Color.fromRGBO(112, 122, 131, 1),
                                      ),
                                    ),
                                    const Spacer(),
                                    Text(
                                      '${isSwapped ? ethToUSDT : btcToUSDT} USDT',
                                      style: const TextStyle(
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w500,
                                        inherit: false,
                                        fontSize: 12,
                                        color: Color.fromRGBO(112, 122, 131, 1),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(
                            0,
                            -getHeight(context, 141),
                          ),
                          child: IconButton(
                            iconSize: getWidth(context, 30),
                            onPressed: () {
                              setState(() {
                                isSwapped = !isSwapped;
                              });
                            },
                            icon: const Icon(
                              Icons.expand_circle_down,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const HistoryScreen()),
                      );
                    },
                    child: Container(
                      width: getWidth(context, 340),
                      height: getHeight(context, 55),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromRGBO(52, 63, 82, 1),
                            Color.fromRGBO(117, 141, 184, 1)
                          ],
                        ),
                      ),
                      child: Stack(
                        children: [
                          Center(
                            child: GradientProgressBar(
                              percent: (double.tryParse(_inputText) ?? 0) !=
                                          0 &&
                                      (double.tryParse(_inputText) ?? 0) <=
                                          (isSwapped
                                              ? cryptoSwap[1].currencyBalance
                                              : cryptoSwap[0].currencyBalance)
                                  ? ((((double.tryParse(_inputText) ?? 0) /
                                                  100) /
                                              ((isSwapped
                                                      ? cryptoSwap[1]
                                                          .currencyBalance
                                                      : cryptoSwap[0]
                                                          .currencyBalance) /
                                                  100)) *
                                          100)
                                      .toInt()
                                  : ((((double.tryParse(_inputText) ?? 0) /
                                                          100) /
                                                      ((isSwapped
                                                              ? cryptoSwap[1]
                                                                  .currencyBalance
                                                              : cryptoSwap[0]
                                                                  .currencyBalance) /
                                                          100)) *
                                                  100) >
                                          100
                                      ? 100
                                      : 0,
                              gradient: const LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color.fromRGBO(249, 45, 143, 1),
                                  Color.fromRGBO(45, 118, 249, 1),
                                ],
                              ),
                            ),
                          ),
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'SWAP',
                                  style: ((double.tryParse(_inputText) ?? 0) !=
                                                      0 &&
                                                  (double.tryParse(
                                                              _inputText) ??
                                                          0) <=
                                                      (isSwapped
                                                          ? cryptoSwap[1]
                                                              .currencyBalance
                                                          : cryptoSwap[0]
                                                              .currencyBalance)
                                              ? ((((double.tryParse(
                                                                  _inputText) ??
                                                              0) /
                                                          100) /
                                                      ((isSwapped
                                                              ? cryptoSwap[1]
                                                                  .currencyBalance
                                                              : cryptoSwap[0]
                                                                  .currencyBalance) /
                                                          100)) *
                                                  100)
                                              : 0) >=
                                          25
                                      ? const TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                          inherit: false,
                                          fontSize: 15,
                                        )
                                      : const TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                          inherit: false,
                                          fontSize: 15,
                                          color:
                                              Color.fromRGBO(113, 133, 169, 1),
                                        ),
                                ),
                                SizedBox(
                                  width: getWidth(context, 4),
                                ),
                                Text(
                                  '${isSwapped ? cryptoSwap[1].currencyShortname : cryptoSwap[0].currencyShortname}',
                                  style: const TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    inherit: false,
                                    fontSize: 15,
                                  ),
                                ),
                                SizedBox(
                                  width: getWidth(context, 4),
                                ),
                                Text(
                                  'TO',
                                  style: ((double.tryParse(_inputText) ?? 0) !=
                                                      0 &&
                                                  (double.tryParse(
                                                              _inputText) ??
                                                          0) <=
                                                      (isSwapped
                                                          ? cryptoSwap[1]
                                                              .currencyBalance
                                                          : cryptoSwap[0]
                                                              .currencyBalance)
                                              ? ((((double.tryParse(
                                                                  _inputText) ??
                                                              0) /
                                                          100) /
                                                      ((isSwapped
                                                              ? cryptoSwap[1]
                                                                  .currencyBalance
                                                              : cryptoSwap[0]
                                                                  .currencyBalance) /
                                                          100)) *
                                                  100)
                                              : 0) >=
                                          50
                                      ? const TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                          inherit: false,
                                          fontSize: 15,
                                        )
                                      : const TextStyle(
                                          fontFamily: 'Poppins',
                                          fontWeight: FontWeight.w500,
                                          inherit: false,
                                          fontSize: 15,
                                          color:
                                              Color.fromRGBO(113, 133, 169, 1),
                                        ),
                                ),
                                SizedBox(
                                  width: getWidth(context, 4),
                                ),
                                Text(
                                  '${isSwapped ? cryptoSwap[0].currencyShortname : cryptoSwap[1].currencyShortname}',
                                  style: const TextStyle(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    inherit: false,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          isBottomPanelVisible
              ? const BottomPanel()
              : isCustomKeyboardVisible
                  ? Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: getWidth(context, 430),
                        height: getHeight(context, 355),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50),
                          ),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color.fromRGBO(20, 23, 34, 1),
                              Color.fromRGBO(80, 92, 136, 0.01),
                            ],
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  _buildKeyboardButton('1'),
                                  const Spacer(),
                                  _buildKeyboardButton('2'),
                                  const Spacer(),
                                  _buildKeyboardButton('3'),
                                ],
                              ),
                              SizedBox(
                                height: getHeight(context, 40),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  _buildKeyboardButton('4'),
                                  const Spacer(),
                                  _buildKeyboardButton('5'),
                                  const Spacer(),
                                  _buildKeyboardButton('6'),
                                ],
                              ),
                              SizedBox(
                                height: getHeight(context, 40),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  _buildKeyboardButton('7'),
                                  const Spacer(),
                                  _buildKeyboardButton('8'),
                                  const Spacer(),
                                  _buildKeyboardButton('9'),
                                ],
                              ),
                              SizedBox(
                                height: getHeight(context, 40),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  _buildKeyboardButton('.'),
                                  const Spacer(),
                                  _buildKeyboardButton('0'),
                                  const Spacer(),
                                  SizedBox(
                                    width: getWidth(context, 120),
                                    height: getHeight(context, 50),
                                    child: ElevatedButton(
                                      onPressed: _onDeletePressed,
                                      style: const ButtonStyle(
                                        backgroundColor: WidgetStatePropertyAll(
                                            Colors.transparent),
                                        shadowColor: WidgetStatePropertyAll(
                                            Colors.transparent),
                                      ),
                                      child: Image.asset(
                                          'assets/images/png/backspace.png'),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  : const SizedBox(),
        ],
      ),
    );
  }
}
