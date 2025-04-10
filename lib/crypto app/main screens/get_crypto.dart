import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';
import 'package:social_network/crypto%20app/main%20screens/send_cryplo.dart';
import '../screens/qr_code_screen.dart';
import '../screens/qr_scanner_screen.dart';
import '../screens/send_money.dart';

class GetCrypto extends StatefulWidget {
  const GetCrypto({super.key});

  @override
  State<GetCrypto> createState() => _GetCryptoState();
}

class _GetCryptoState extends State<GetCrypto>
    with SingleTickerProviderStateMixin {
  late AnimationController _gradientController;
  late Animation<Alignment> _gradientAnimation;

  final Random _random = Random();
  final List<Bubble> _bubbles = [];

  @override
  void initState() {
    super.initState();

    _gradientController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 8),
    )..repeat(reverse: true);

    _gradientAnimation = Tween<Alignment>(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ).animate(_gradientController);
    for (int i = 0; i < 15; i++) {
      _bubbles.add(
        Bubble(
            x: _random.nextDouble(),
            y: _random.nextDouble(),
            size: _random.nextDouble() * 20 + 10,
            opacity: _random.nextDouble() * 0.5 + 0.1,
            speed: _random.nextDouble() * 0.5 + 0.1),
      );
    }
    _gradientController.addListener(() {
      setState(() {
        for (var bubble in _bubbles) {
          // Двигаем пузырьки вверх
          bubble.y -= bubble.speed * 0.005;

          // Если пузырек ушел за верх экрана - создаем новый внизу
          if (bubble.y < -0.2) {
            bubble.y = 1.2;
            bubble.x = _random.nextDouble();
          }
        }
      });
    });
  }

  @override
  void dispose() {
    _gradientController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          AnimatedBuilder(
            animation: _gradientController,
            builder: (context, child) {
              return Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Colors.black,
                          const Color.fromRGBO(1, 10, 23, 0.7)
                        ],
                        begin: _gradientAnimation.value,
                        end: Alignment(
                          _gradientAnimation.value.x + 0.5,
                          _gradientAnimation.value.y + 0.5,
                        ),
                      ),
                    ),
                  ),
                  ..._bubbles.map((bubble) {
                    return Positioned(
                      left: bubble.x * MediaQuery.of(context).size.width,
                      top: bubble.y * MediaQuery.of(context).size.height,
                      child: Opacity(
                        opacity: bubble.opacity,
                        child: Container(
                          width: bubble.size,
                          height: bubble.size,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(2, 25, 58, 1.0),
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blue.withOpacity(0.1),
                                blurRadius: 10,
                                spreadRadius: 2,
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                  Positioned(
                    width: 300,
                    height: 300,
                    left: MediaQuery.of(context).size.width / 2 - 150,
                    // Центрирование по горизонтали
                    top: MediaQuery.of(context).size.height / 4 - 100,
                    // Расположение в верхней части
                    child: IgnorePointer(
                      child: Lottie.asset(
                        'assets/json/wallet_get_crypto.json',
                        fit: BoxFit.contain,
                        repeat: true,
                        animate: true,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
          Positioned(
            top: 50,
            right: 20,
            left: 20,
            child: Center(
              child: const Text(
                'GET CRYPTO',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.4,
            minChildSize: 0.3,
            maxChildSize: 0.8,
            snap: true,
            builder: (context, scrollController) {
              return Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50)),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromRGBO(5, 11, 28, 1.0),
                        Color.fromRGBO(14, 20, 37, 1.0),
                      ]),
                ),
                child: CustomScrollView(
                  controller: scrollController,
                  slivers: [
                    SliverToBoxAdapter(
                      child: Center(
                        child: Container(
                          width: 50,
                          height: 3,
                          margin: const EdgeInsets.only(top: 20, bottom: 10),
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                      ),
                    ),
                    SliverPadding(
                      padding: const EdgeInsets.all(20),
                      sliver: SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) => _buildWalletItem(context, index),
                          childCount: 4,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildWalletItem(BuildContext context, int index) {
    // Данные кошельков (можно вынести в отдельный список)
    final wallets = [
      {
        'title': 'Your Ethereum address',
        'address': '0xF09242467c484',
        'logo': 'assets/images/png/eth.png',
        'balance': '0.939 ETH',
        'color': Colors.blue,
      },
      {
        'title': 'Your Solana address',
        'address': 'Fvp8410ekdbQWBV',
        'logo': 'assets/images/png/solana_logo.png',
        'balance': '23 SOL',
        'color': Colors.purple,
      },
    ];

    final wallet =
        wallets[index % wallets.length]; // Циклически используем данные

    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 118,
      margin: const EdgeInsets.only(bottom: 10),
      decoration: const BoxDecoration(
          // color: Colors.black.withOpacity(0.4),
          // borderRadius: BorderRadius.circular(12),
          // border: Border.all(color: Colors.white.withOpacity(0.1)),
          ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           Padding(
              padding: const EdgeInsets.only(top: 15, left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    wallet['title'] as String,
                    style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    wallet['address'] as String,
                    style: const TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color.fromRGBO(112, 122, 131, 1),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Image.asset(
                        width: 20,
                        height: 20,
                        wallet['logo'] as String,
                      ),
                      const SizedBox(width: 15),
                      const Text(
                        'Balance: ',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Colors.white,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Действие при нажатии на баланс
                        },
                        child: Text(
                          wallet['balance'] as String,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            fontSize: 12,
                            color: wallet['color'] as Color,
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
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => const QrCodeScreen()),
                  );
                },
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withOpacity(0.05),
                  ),
                  child: SvgPicture.asset(
                    'assets/images/svg/qr_code.svg',
                    width: 21,
                    height: 21,
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              GestureDetector(
                onTap: () {
                  // Действие при копировании
                  Clipboard.setData(
                      ClipboardData(text: wallet['address'] as String));
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('${wallet['title']} copied')),
                  );
                },
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withOpacity(0.05),
                  ),
                  child: SvgPicture.asset(
                    'assets/images/svg/copy_button.svg',
                    width: 21,
                    height: 21,
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
