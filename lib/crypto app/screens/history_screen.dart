import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../../Chess/Components/size_model.dart';
import '../model/crypto.dart';
import '../model/gradient_progress_bar.dart';


class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
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
  bool isSwapped = false;
  double ethToUSDT = 1688.23;
  double btcToUSDT = 98688.23;
  double enteredNubmer = 0.1;

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
                'History',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Gotham',
                  inherit: false,
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              const Spacer(),
              SizedBox(
                width: getWidth(context, 54),
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
              height: getHeight(context, 300),
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
                                    // ignore: prefer_const_constructors
                                    Row(
                                      children: const [
                                        Text(
                                          'You sell',
                                          style: TextStyle(
                                            inherit: false,
                                            fontSize: 12,
                                            color: Color.fromRGBO(
                                                112, 122, 131, 1),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          '27.12.2025 15:45',
                                          style: TextStyle(
                                            inherit: false,
                                            fontSize: 12,
                                            color: Color.fromRGBO(
                                                255, 255, 255, 1),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    Text(
                                      'Balance: ${isSwapped ? cryptoSwap[1].currencyBalance : cryptoSwap[0].currencyBalance}',
                                      style: const TextStyle(
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
                                        onTap: () {},
                                        child: const Text(
                                          'MAX',
                                          style: TextStyle(
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
                                        inherit: false,
                                        fontSize: 24,
                                      ),
                                    ),
                                    GestureDetector(
                                      child: const Icon(
                                        Icons.keyboard_arrow_down,
                                        color: Color.fromRGBO(167, 168, 169, 1),
                                      ),
                                    ),
                                    const Spacer(),
                                    GestureDetector(
                                      child: const Text(
                                        '0',
                                        style: TextStyle(
                                          inherit: false,
                                          fontSize: 24,
                                          color:
                                              Color.fromRGBO(112, 122, 131, 1),
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
                                        inherit: false,
                                        fontSize: 12,
                                        color: Color.fromRGBO(112, 122, 131, 1),
                                      ),
                                    ),
                                    const Spacer(),
                                    Text(
                                      '${isSwapped ? btcToUSDT : ethToUSDT} USDT',
                                      style: const TextStyle(
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
                                    const Row(
                                      children: [
                                        Text(
                                          'You buy',
                                          style: TextStyle(
                                            inherit: false,
                                            fontSize: 12,
                                            color: Color.fromRGBO(
                                                112, 122, 131, 1),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    Text(
                                      'Balance: ${isSwapped ? cryptoSwap[0].currencyBalance : cryptoSwap[1].currencyBalance}',
                                      style: const TextStyle(
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
                                        onTap: () {},
                                        child: const Text(
                                          'MAX',
                                          style: TextStyle(
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
                                        inherit: false,
                                        fontSize: 24,
                                      ),
                                    ),
                                    GestureDetector(
                                      child: const Icon(
                                        Icons.keyboard_arrow_down,
                                        color: Color.fromRGBO(167, 168, 169, 1),
                                      ),
                                    ),
                                    const Spacer(),
                                    GestureDetector(
                                      child: const Text(
                                        '0',
                                        style: TextStyle(
                                          inherit: false,
                                          fontSize: 24,
                                          color:
                                              Color.fromRGBO(112, 122, 131, 1),
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
                                        inherit: false,
                                        fontSize: 12,
                                        color: Color.fromRGBO(112, 122, 131, 1),
                                      ),
                                    ),
                                    const Spacer(),
                                    Text(
                                      '${isSwapped ? ethToUSDT : btcToUSDT} USDT',
                                      style: const TextStyle(
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
                              setState(() {});
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
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: getWidth(context, 25),
              right: getWidth(context, 25),
            ),
            child: Container(
              width: getWidth(context, 380),
              height: getHeight(context, 300),
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
                                    const Row(
                                      children: [
                                        Text(
                                          'You sell',
                                          style: TextStyle(
                                            inherit: false,
                                            fontSize: 12,
                                            color: Color.fromRGBO(
                                                112, 122, 131, 1),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          '24.12.2025 11:15',
                                          style: TextStyle(
                                            inherit: false,
                                            fontSize: 12,
                                            color: Color.fromRGBO(
                                                255, 255, 255, 1),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const Spacer(),
                                    Text(
                                      'Balance: ${isSwapped ? cryptoSwap[1].currencyBalance : cryptoSwap[0].currencyBalance}',
                                      style: const TextStyle(
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
                                        onTap: () {},
                                        child: const Text(
                                          'MAX',
                                          style: TextStyle(
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
                                        inherit: false,
                                        fontSize: 24,
                                      ),
                                    ),
                                    GestureDetector(
                                      child: const Icon(
                                        Icons.keyboard_arrow_down,
                                        color: Color.fromRGBO(167, 168, 169, 1),
                                      ),
                                    ),
                                    const Spacer(),
                                    GestureDetector(
                                      child: const Text(
                                        '0',
                                        style: TextStyle(
                                          inherit: false,
                                          fontSize: 24,
                                          color:
                                              Color.fromRGBO(112, 122, 131, 1),
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
                                        inherit: false,
                                        fontSize: 12,
                                        color: Color.fromRGBO(112, 122, 131, 1),
                                      ),
                                    ),
                                    const Spacer(),
                                    Text(
                                      '${isSwapped ? btcToUSDT : ethToUSDT} USDT',
                                      style: const TextStyle(
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
                                        inherit: false,
                                        fontSize: 12,
                                        color: Color.fromRGBO(112, 122, 131, 1),
                                      ),
                                    ),
                                    const Spacer(),
                                    Text(
                                      'Balance: ${isSwapped ? cryptoSwap[0].currencyBalance : cryptoSwap[1].currencyBalance}',
                                      style: const TextStyle(
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
                                        onTap: () {},
                                        child: const Text(
                                          'MAX',
                                          style: TextStyle(
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
                                        inherit: false,
                                        fontSize: 24,
                                      ),
                                    ),
                                    GestureDetector(
                                      child: const Icon(
                                        Icons.keyboard_arrow_down,
                                        color: Color.fromRGBO(167, 168, 169, 1),
                                      ),
                                    ),
                                    const Spacer(),
                                    GestureDetector(
                                      child: const Text(
                                        '0',
                                        style: TextStyle(
                                          inherit: false,
                                          fontSize: 24,
                                          color:
                                              Color.fromRGBO(112, 122, 131, 1),
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
                                        inherit: false,
                                        fontSize: 12,
                                        color: Color.fromRGBO(112, 122, 131, 1),
                                      ),
                                    ),
                                    const Spacer(),
                                    Text(
                                      '${isSwapped ? ethToUSDT : btcToUSDT} USDT',
                                      style: const TextStyle(
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
                              setState(() {});
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
                ],
              ),
            ),
          ),
          const Spacer(),
          Container(
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
            child: GestureDetector(
              onTap: () {},
              child: const Stack(
                children: [
                  Center(
                    child: GradientProgressBar(
                      percent: 100,
                      gradient: LinearGradient(
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
                    child: Text(
                      'Make Screen',
                      style: TextStyle(
                        inherit: false,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: getHeight(context, 25),
          ),
        ],
      ),
    );
  }
}
