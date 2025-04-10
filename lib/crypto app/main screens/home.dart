import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../Chess/Components/size_model.dart';
import '../../core/data/local_storage_keys.dart';
import '../../core/helpers/api_requester.dart';
import '../../features/profile/logic/profile_bloc.dart';
import '../../features/profile/model/user_model.dart';

class HomeScreenCrypto extends StatefulWidget {

  const HomeScreenCrypto({super.key});

  @override
  State<HomeScreenCrypto> createState() => _HomeScreenCryptoState();
}

class _HomeScreenCryptoState extends State<HomeScreenCrypto>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _colorAnimation1;
  late Animation<Color?> _colorAnimation2;
  late ProfileBloc profileBloc;
  ApiRequester apiRequester = ApiRequester();
  late UserModel user;

  @override
  void initState() {
    super.initState();
    profileBloc = context.read<ProfileBloc>()
      ..add(
        ProfileEvent.init(
            context.read<SharedPreferences>().getInt(LocalStorageKeys.userId)!),
      );
    // Создаем AnimationController
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )..repeat(reverse: true);

    // Анимация для первого цвета
    _colorAnimation1 = ColorTween(
      begin: Colors.black,
      end: const Color.fromRGBO(63, 12, 99, 1.0),
    ).animate(_controller);

    // Анимация для второго цвета
    _colorAnimation2 = ColorTween(
      begin: const Color.fromRGBO(63, 12, 99, 1.0),
      end: Colors.black,
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge,
        overlays: [SystemUiOverlay.top]);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.black,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.light,
      ),
    );
    return BlocBuilder<ProfileBloc, ProfileState>(
        bloc: profileBloc,
      builder: (context,state) {
        state.when(
          initial: () {},
          loadInProgress: () {},
          loadSuccess: (response) {
            user = response;
          },
          signOutSuccess: () {},
          loadFailure: (error) {},
          enabledChatGpt: () {},
        );
        if (state is ProfileInitialState) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is ProfileLoadFailureState) {
          return Center(child: Text(state.error.toString()));
        } else if (state is ProfileLoadInProgressState) {
          return const Center(child: CircularProgressIndicator());
        }
        return Scaffold(
          body: AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        _colorAnimation1.value!,
                        _colorAnimation2.value!,
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 40,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    height: getHeight(context, 40),
                                    width: getWidth(context, 40),
                                    child: ClipOval(
                                      child: Image.network(
                                        user.profilePictures != null && user.profilePictures!.isNotEmpty
                                            ? user.profilePictures!.first.image
                                            : '',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 20,),
                                  Text(
                                    user.username,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      fontFamily: 'Inter',
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                    ),
                                  ),
                                ],
                              ),
                              InkWell(
                                onTap: () {},
                                child: const Icon(
                                  Icons.notification_add,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),

                        Expanded(
                          child: ListView(
                            padding: EdgeInsets.zero,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          '13 450 USDT',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 25,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Container(
                                          width: 78,
                                          height: 32,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(100),
                                            color: Colors.white.withOpacity(0.1),
                                          ),
                                          child: const Center(
                                            child: Text(
                                              '+ 15,7 %',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w700,
                                                color: Color.fromRGBO(78, 244, 125, 1),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Total balance',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white.withOpacity(0.25),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                width: double.infinity,
                                height: 76,
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(33, 30, 65, .4),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Bitcoin',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15,
                                              color: Colors.white.withOpacity(0.25),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          const Text(
                                            '0.838141',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Etherium',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15,
                                              color: Colors.white.withOpacity(0.25),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          const Text(
                                            '18.1902',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'W',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 15,
                                              color: Colors.white.withOpacity(0.25),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          const Text(
                                            '399.93',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w600,
                                              fontSize: 15,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 28),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    InkWell(
                                      child: Container(
                                        width: 48,
                                        height: 48,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(100),
                                          color: Colors.white.withOpacity(0.1),
                                        ),
                                        child: const Center(
                                            child: Icon(Icons.arrow_upward,color: Colors.white,)
                                        ),
                                      ),
                                      onTap: () {},
                                    ),
                                    InkWell(
                                      child: Container(
                                        width: 48,
                                        height: 48,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(100),
                                          color: Colors.white.withOpacity(0.1),
                                        ),
                                        child: Center(
                                          child: Image.asset('assets/Vector2.png'),
                                        ),
                                      ),
                                      onTap: () {},
                                    ),
                                    InkWell(
                                      child: Container(
                                        width: 48,
                                        height: 48,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(100),
                                          color: Colors.white.withOpacity(0.1),
                                        ),
                                        child: Center(
                                          child: Image.asset('assets/Vector3.png'),
                                        ),
                                      ),
                                      onTap: () {},
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: double.infinity,
                                        height: 180,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.white.withOpacity(0.05),
                                        ),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 65,
                                              height: 65,
                                              decoration: BoxDecoration(
                                                color: const Color.fromRGBO(29, 27, 50, 1),
                                                borderRadius: BorderRadius.circular(100),
                                              ),
                                              child: Image.asset('assets/Vector6.png'),
                                            ),
                                            //SVG
                                            const SizedBox(height: 5,),
                                            Text(
                                              'Bitcoin',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white.withOpacity(0.25),
                                              ),
                                            ),
                                            const SizedBox(height: 5,),

                                            const Text(
                                              '\$ 21 381',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white,
                                              ),
                                            ),
                                            const SizedBox(height: 5,),

                                            Container(
                                              width: 80,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(100),
                                                color: const Color.fromRGBO(33, 30, 65, 1),
                                              ),
                                              child: const Center(
                                                child: Text(
                                                  '+ 2.17%',
                                                  style: TextStyle(
                                                    color: Color.fromRGBO(89, 253, 130, 1),
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Container(
                                        width: double.infinity,
                                        height: 180,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                            color: Colors.white.withOpacity(0.05)                              ),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 65,
                                              height: 65,
                                              decoration: BoxDecoration(
                                                color: const Color.fromRGBO(29, 27, 50, 1),
                                                borderRadius: BorderRadius.circular(100),
                                              ),
                                              child: Image.asset('assets/Vector7.png'),
                                            ),
                                            //SV
                                            const SizedBox(height: 5,),
                                            Text(
                                              'Ethereum',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white.withOpacity(0.25),
                                              ),
                                            ),
                                            const SizedBox(height: 5,),
                                            const Text(
                                              '\$ 512',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white,
                                              ),
                                            ),
                                            const SizedBox(height: 5,),
                                            Container(
                                              width: 80,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(100),
                                                color: const Color.fromRGBO(33, 30, 65, 1),
                                              ),
                                              child: const Center(
                                                child: Text(
                                                  '- 1.17%',
                                                  style: TextStyle(
                                                    color: Color.fromRGBO(255, 11, 11, 1),
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: double.infinity,
                                        height: 180,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: Colors.white.withOpacity(0.05)                                //блюр добавить
                                        ),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 65,
                                              height: 65,
                                              decoration: BoxDecoration(
                                                color: const Color.fromRGBO(29, 27, 50, 1),
                                                borderRadius: BorderRadius.circular(100),
                                              ),
                                              child: Image.asset('assets/Vector5.png'),
                                            ),
                                            Text(
                                              'Ripple',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white.withOpacity(0.25),
                                              ),
                                            ),
                                            const Text(
                                              '\$ 21 381',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Container(
                                              width: 80,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(100),
                                                color: const Color.fromRGBO(33, 30, 65, 1),
                                              ),
                                              child: const Center(
                                                child: Text(
                                                  '+ 2.17%',
                                                  style: TextStyle(
                                                    color: Color.fromRGBO(89, 253, 130, 1),
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Container(
                                        width: double.infinity,
                                        height: 180,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: Colors.white.withOpacity(0.05)                              ),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,

                                          children: [
                                            Container(
                                              width: 65,
                                              height: 65,
                                              decoration: BoxDecoration(
                                                color: const Color.fromRGBO(29, 27, 50, 1),
                                                borderRadius: BorderRadius.circular(100),
                                              ),
                                              child: Image.asset('assets/Vector4.png'),
                                            ),
                                            Text(
                                              'All Crypto',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white.withOpacity(0.25),
                                              ),
                                            ),
                                            const Text(
                                              '\$ 349 949 942 392',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Container(
                                              height: 30,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: double.infinity,
                                        height: 180,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.white.withOpacity(0.05),
                                        ),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 65,
                                              height: 65,
                                              decoration: BoxDecoration(
                                                color: const Color.fromRGBO(29, 27, 50, 1),
                                                borderRadius: BorderRadius.circular(100),
                                              ),
                                              child: Image.asset('assets/Vector6.png'),
                                            ),
                                            //SVG
                                            const SizedBox(height: 5,),
                                            Text(
                                              'Bitcoin',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white.withOpacity(0.25),
                                              ),
                                            ),
                                            const SizedBox(height: 5,),

                                            const Text(
                                              '\$ 21 381',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white,
                                              ),
                                            ),
                                            const SizedBox(height: 5,),

                                            Container(
                                              width: 80,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(100),
                                                color: const Color.fromRGBO(33, 30, 65, 1),
                                              ),
                                              child: const Center(
                                                child: Text(
                                                  '+ 2.17%',
                                                  style: TextStyle(
                                                    color: Color.fromRGBO(89, 253, 130, 1),
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Container(
                                        width: double.infinity,
                                        height: 180,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: Colors.white.withOpacity(0.05)                              ),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 65,
                                              height: 65,
                                              decoration: BoxDecoration(
                                                color: const Color.fromRGBO(29, 27, 50, 1),
                                                borderRadius: BorderRadius.circular(100),
                                              ),
                                              child: Image.asset('assets/Vector7.png'),
                                            ),
                                            //SV
                                            const SizedBox(height: 5,),
                                            Text(
                                              'Ethereum',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white.withOpacity(0.25),
                                              ),
                                            ),
                                            const SizedBox(height: 5,),
                                            const Text(
                                              '\$ 512',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white,
                                              ),
                                            ),
                                            const SizedBox(height: 5,),
                                            Container(
                                              width: 80,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(100),
                                                color: const Color.fromRGBO(33, 30, 65, 1),
                                              ),
                                              child: const Center(
                                                child: Text(
                                                  '- 1.17%',
                                                  style: TextStyle(
                                                    color: Color.fromRGBO(255, 11, 11, 1),
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: double.infinity,
                                        height: 180,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: Colors.white.withOpacity(0.05)                                //блюр добавить
                                        ),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 65,
                                              height: 65,
                                              decoration: BoxDecoration(
                                                color: const Color.fromRGBO(29, 27, 50, 1),
                                                borderRadius: BorderRadius.circular(100),
                                              ),
                                              child: Image.asset('assets/Vector5.png'),
                                            ),
                                            Text(
                                              'Ripple',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white.withOpacity(0.25),
                                              ),
                                            ),
                                            const Text(
                                              '\$ 21 381',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Container(
                                              width: 80,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(100),
                                                color: const Color.fromRGBO(33, 30, 65, 1),
                                              ),
                                              child: const Center(
                                                child: Text(
                                                  '+ 2.17%',
                                                  style: TextStyle(
                                                    color: Color.fromRGBO(89, 253, 130, 1),
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Container(
                                        width: double.infinity,
                                        height: 180,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: Colors.white.withOpacity(0.05)                              ),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,

                                          children: [
                                            Container(
                                              width: 65,
                                              height: 65,
                                              decoration: BoxDecoration(
                                                color: const Color.fromRGBO(29, 27, 50, 1),
                                                borderRadius: BorderRadius.circular(100),
                                              ),
                                              child: Image.asset('assets/Vector4.png'),
                                            ),
                                            Text(
                                              'All Crypto',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white.withOpacity(0.25),
                                              ),
                                            ),
                                            const Text(
                                              '\$ 349 949 942 392',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Container(
                                              height: 30,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 8),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: double.infinity,
                                        height: 180,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(20),
                                          color: Colors.white.withOpacity(0.05),
                                        ),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 65,
                                              height: 65,
                                              decoration: BoxDecoration(
                                                color: const Color.fromRGBO(29, 27, 50, 1),
                                                borderRadius: BorderRadius.circular(100),
                                              ),
                                              child: Image.asset('assets/Vector6.png'),
                                            ),
                                            //SVG
                                            const SizedBox(height: 5,),
                                            Text(
                                              'Bitcoin',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white.withOpacity(0.25),
                                              ),
                                            ),
                                            const SizedBox(height: 5,),

                                            const Text(
                                              '\$ 21 381',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white,
                                              ),
                                            ),
                                            const SizedBox(height: 5,),

                                            Container(
                                              width: 80,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(100),
                                                color: const Color.fromRGBO(33, 30, 65, 1),
                                              ),
                                              child: const Center(
                                                child: Text(
                                                  '+ 2.17%',
                                                  style: TextStyle(
                                                    color: Color.fromRGBO(89, 253, 130, 1),
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Container(
                                        width: double.infinity,
                                        height: 180,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: Colors.white.withOpacity(0.05)                              ),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 65,
                                              height: 65,
                                              decoration: BoxDecoration(
                                                color: const Color.fromRGBO(29, 27, 50, 1),
                                                borderRadius: BorderRadius.circular(100),
                                              ),
                                              child: Image.asset('assets/Vector7.png'),
                                            ),
                                            //SV
                                            const SizedBox(height: 5,),
                                            Text(
                                              'Ethereum',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white.withOpacity(0.25),
                                              ),
                                            ),
                                            const SizedBox(height: 5,),
                                            const Text(
                                              '\$ 512',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white,
                                              ),
                                            ),
                                            const SizedBox(height: 5,),
                                            Container(
                                              width: 80,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(100),
                                                color: const Color.fromRGBO(33, 30, 65, 1),
                                              ),
                                              child: const Center(
                                                child: Text(
                                                  '- 1.17%',
                                                  style: TextStyle(
                                                    color: Color.fromRGBO(255, 11, 11, 1),
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        width: double.infinity,
                                        height: 180,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: Colors.white.withOpacity(0.05)                                //блюр добавить
                                        ),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: 65,
                                              height: 65,
                                              decoration: BoxDecoration(
                                                color: const Color.fromRGBO(29, 27, 50, 1),
                                                borderRadius: BorderRadius.circular(100),
                                              ),
                                              child: Image.asset('assets/Vector5.png'),
                                            ),
                                            Text(
                                              'Ripple',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white.withOpacity(0.25),
                                              ),
                                            ),
                                            const Text(
                                              '\$ 21 381',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Container(
                                              width: 80,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(100),
                                                color: const Color.fromRGBO(33, 30, 65, 1),
                                              ),
                                              child: const Center(
                                                child: Text(
                                                  '+ 2.17%',
                                                  style: TextStyle(
                                                    color: Color.fromRGBO(89, 253, 130, 1),
                                                    fontWeight: FontWeight.w500,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Container(
                                        width: double.infinity,
                                        height: 180,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(20),
                                            color: Colors.white.withOpacity(0.05)                              ),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,

                                          children: [
                                            Container(
                                              width: 65,
                                              height: 65,
                                              decoration: BoxDecoration(
                                                color: const Color.fromRGBO(29, 27, 50, 1),
                                                borderRadius: BorderRadius.circular(100),
                                              ),
                                              child: Image.asset('assets/Vector4.png'),
                                            ),
                                            Text(
                                              'All Crypto',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.white.withOpacity(0.25),
                                              ),
                                            ),
                                            const Text(
                                              '\$ 349 949 942 392',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Container(
                                              height: 30,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.all(12.0),
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.center,
                        //     children: [
                        //       Expanded(
                        //         child: Container(
                        //           width: double.infinity,
                        //           height: 180,
                        //           decoration: BoxDecoration(
                        //             borderRadius: BorderRadius.circular(20),
                        //               color: Colors.white.withOpacity(0.05)                                //блюр добавить
                        //           ),
                        //           child: Column(
                        //             mainAxisAlignment: MainAxisAlignment.center,
                        //             children: [
                        //               Container(
                        //                 width: 65,
                        //                 height: 65,
                        //                 decoration: BoxDecoration(
                        //                   color: Color.fromRGBO(29, 27, 50, 1),
                        //                   borderRadius: BorderRadius.circular(100),
                        //                 ),
                        //                 child: Image.asset('assets/Vector5.png'),
                        //               ),
                        //               Text(
                        //                 'Ripple',
                        //                 style: TextStyle(
                        //                   fontSize: 14,
                        //                   fontWeight: FontWeight.w500,
                        //                   color: Colors.white.withOpacity(0.25),
                        //                 ),
                        //               ),
                        //               Text(
                        //                 '\$ 21 381',
                        //                 style: TextStyle(
                        //                   fontSize: 14,
                        //                   fontWeight: FontWeight.w600,
                        //                   color: Colors.white,
                        //                 ),
                        //               ),
                        //               Container(
                        //                 width: 80,
                        //                 height: 30,
                        //                 decoration: BoxDecoration(
                        //                   borderRadius: BorderRadius.circular(100),
                        //                   color: Color.fromRGBO(33, 30, 65, 1),
                        //                 ),
                        //                 child: Center(
                        //                   child: Text(
                        //                     '+ 2.17%',
                        //                     style: TextStyle(
                        //                       color: Color.fromRGBO(89, 253, 130, 1),
                        //                       fontWeight: FontWeight.w500,
                        //                       fontSize: 14,
                        //                     ),
                        //                   ),
                        //                 ),
                        //               )
                        //             ],
                        //           ),
                        //         ),
                        //       ),
                        //       SizedBox(
                        //         width: 10,
                        //       ),
                        //       Expanded(
                        //         child: Container(
                        //           width: double.infinity,
                        //           height: 180,
                        //           decoration: BoxDecoration(
                        //             borderRadius: BorderRadius.circular(20),
                        //               color: Colors.white.withOpacity(0.05)                              ),
                        //           child: Column(
                        //             mainAxisAlignment: MainAxisAlignment.center,
                        //
                        //             children: [
                        //               Container(
                        //                 width: 65,
                        //                 height: 65,
                        //                 decoration: BoxDecoration(
                        //                   color: Color.fromRGBO(29, 27, 50, 1),
                        //                   borderRadius: BorderRadius.circular(100),
                        //                 ),
                        //                 child: Image.asset('assets/Vector4.png'),
                        //               ),
                        //               Text(
                        //                 'All Crypto',
                        //                 style: TextStyle(
                        //                   fontSize: 14,
                        //                   fontWeight: FontWeight.w500,
                        //                   color: Colors.white.withOpacity(0.25),
                        //                 ),
                        //               ),
                        //               Text(
                        //                 '\$ 349 949 942 392',
                        //                 style: TextStyle(
                        //                   fontSize: 14,
                        //                   fontWeight: FontWeight.w600,
                        //                   color: Colors.white,
                        //                 ),
                        //               ),
                        //               Container(
                        //                 height: 30,
                        //               ),
                        //             ],
                        //           ),
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                );
              }),
        );
      }
    );
  }
}
