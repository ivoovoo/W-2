// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:timer_count_down/timer_count_down.dart';
//
// import '../../CLOUD/models/main_bar.dart';
// import '../../core/data/local_storage_keys.dart';
// import '../../core/helpers/api_requester.dart';
// import '../../features/profile/logic/profile_bloc.dart';
// import '../../features/profile/model/user_model.dart';
// import '../../features/profile/widgets/header_widget.dart';
// import '../Components/game_board.dart';
// import '../Components/painter.dart';
// import '../Components/size_model.dart';
// import 'information_board_screen.dart';
// import 'swiper.dart';
//
// class GameplayScreen extends StatefulWidget {
//   const GameplayScreen({super.key});
//
//   @override
//   State<GameplayScreen> createState() => _GameplayScreenState();
// }
//
// class _GameplayScreenState extends State<GameplayScreen> {
//   late ProfileBloc profileBloc;
//   ApiRequester apiRequester = ApiRequester();
//   late UserModel user;
//
//   @override
//   void initState() {
//     profileBloc = context.read<ProfileBloc>()
//       ..add(
//         ProfileEvent.init(
//             context.read<SharedPreferences>().getInt(LocalStorageKeys.userId)!),
//       );
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge,
//         overlays: [SystemUiOverlay.top]);
//     SystemChrome.setSystemUIOverlayStyle(
//       const SystemUiOverlayStyle(
//         statusBarColor: Colors.transparent,
//         systemNavigationBarColor: Colors.black,
//         statusBarIconBrightness: Brightness.dark,
//         systemNavigationBarIconBrightness: Brightness.light,
//       ),
//     );
//     return BlocBuilder<ProfileBloc, ProfileState>(
//         bloc: profileBloc,
//         builder: (context, state) {
//           state.when(
//             initial: () {},
//             loadInProgress: () {},
//             loadSuccess: (response) {
//               user = response;
//             },
//             signOutSuccess: () {},
//             loadFailure: (error) {},
//             enabledChatGpt: () {},
//           );
//           if (state is ProfileInitialState) {
//             return const Center(child: CircularProgressIndicator());
//           } else if (state is ProfileLoadFailureState) {
//             return Center(child: Text(state.error.toString()));
//           } else if (state is ProfileLoadInProgressState) {
//             return const Center(child: CircularProgressIndicator());
//           }
//           return Container(
//             decoration: const BoxDecoration(
//               gradient: LinearGradient(
//                 begin: Alignment.center,
//                 end: Alignment.bottomCenter,
//                 colors: [
//                   Color.fromRGBO(12, 8, 19, 0.9),
//                   Color.fromRGBO(56, 52, 63, 0),
//                 ],
//               ),
//             ),
//             child: Scaffold(
//               body: CustomPaint(
//                 painter: X1Painter(),
//                 child: Column(
//                   children: [
//
//                     Align(
//                       alignment: Alignment.topLeft,
//                       child: Padding(
//                         padding: EdgeInsets.only(
//                           left: getWidth(context, 20),
//                           top: getHeight(context, 50),
//                         ),
//                         child: InkWell(
//                           onTap: () {
//                             Navigator.of(context).pushReplacement(
//                                 MaterialPageRoute(
//                                     builder: (context) => MainScreenCloud()));
//                           },
//                           child: SvgPicture.asset(
//                               'assets/images/svg/arrow-left.svg'),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: getHeight(context, 30),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Column(
//                             children: [
//                               // SizedBox(
//                               //   height: getHeight(context, 66),
//                               //   width: getWidth(context, 66),
//                               //   child: const CircleAvatar(
//                               //     backgroundImage: NetworkImage(
//                               //         user.profilePictures != null && user.profilePictures!.isNotEmpty
//                               //             ? user.profilePictures!.first.url
//                               //             : 'https://example.com/default_avatar.png'
//                               //     ),
//                               //     radius: 33,
//                               //   ),
//                               // ),
//                               SizedBox(
//                                 height: getHeight(context, 66),
//                                   width: getWidth(context, 66),
//                                 child: Image.network(
//                                     user.profilePictures != null && user.profilePictures!.isNotEmpty
//                                         ? user.profilePictures!.first.image
//                                         : ''
//                                 ),
//                               ),
//                               const Text(
//                                 'Aishwarya',
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.w500,
//                                   fontSize: 16,
//                                   fontFamily: 'Inter',
//                                   color: Color.fromRGBO(255, 255, 255, 1),
//                                 ),
//                               ),
//                               const Text(
//                                 'Level 2',
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.w400,
//                                   fontSize: 12,
//                                   fontFamily: 'Inter',
//                                   color: Color.fromRGBO(255, 255, 255, 1),
//                                 ),
//                               ),
//                             ],
//                           ),
//                           Column(
//                             children: [
//                               SizedBox(
//                                 width: getWidth(context, 50),
//                                 height: getHeight(context, 50),
//                                 child: SvgPicture.asset(
//                                   'assets/images/svg/timer.svg',
//                                   fit: BoxFit.contain,
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: getHeight(context, 3),
//                               ),
//                               Countdown(
//                                 seconds: 45,
//                                 build: (BuildContext context, double time) =>
//                                     Text(
//                                   '00:${time.toInt().toString()}',
//                                   style: const TextStyle(
//                                     fontWeight: FontWeight.w500,
//                                     fontSize: 12,
//                                     fontFamily: 'Inter',
//                                     color: Color.fromRGBO(255, 255, 255, 1),
//                                   ),
//                                 ),
//                                 interval: const Duration(milliseconds: 1000),
//                                 onFinished: () {},
//                               ),
//                               SizedBox(
//                                 height: getHeight(context, 10),
//                               ),
//                               Container(
//                                 width: getWidth(context, 94),
//                                 height: getHeight(context, 25),
//                                 decoration: BoxDecoration(
//                                   color:
//                                       const Color.fromRGBO(255, 255, 255, 0.2),
//                                   borderRadius: BorderRadius.circular(12),
//                                 ),
//                                 child: const Center(
//                                   child: Text(
//                                     'Time',
//                                     style: TextStyle(
//                                       fontWeight: FontWeight.w400,
//                                       fontSize: 12,
//                                       fontFamily: 'Inter',
//                                       color: Color.fromRGBO(255, 255, 255, 1),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ],
//                           ),
//                           Column(
//                             children: [
//                               SizedBox(
//                                 height: getHeight(context, 64),
//                                 width: getWidth(context, 64),
//                                 child: const CircleAvatar(
//                                   backgroundImage: AssetImage(
//                                       'assets/images/png/vineeta.png'),
//                                   radius: 33,
//                                 ),
//                               ),
//                               const Text(
//                                 'Vineeta',
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.w500,
//                                   fontSize: 16,
//                                   fontFamily: 'Inter',
//                                   color: Color.fromRGBO(255, 255, 255, 1),
//                                 ),
//                               ),
//                               const Text(
//                                 'Level 2',
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.w400,
//                                   fontSize: 12,
//                                   fontFamily: 'Inter',
//                                   color: Color.fromRGBO(255, 255, 255, 1),
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       height: getHeight(context, 30),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.only(
//                         left: getWidth(context, 30),
//                       ),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           GestureDetector(
//                             onTap: () {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => SwiperExample()),
//                               );
//                             },
//                             child: SizedBox(
//                               width: 84,
//                               height: 30,
//                               child: Row(
//                                 children: [
//                                   SizedBox(
//                                     height: 28,
//                                     width: 28,
//                                     child: SvgPicture.asset(
//                                       'assets/images/svg/svg-figures/black_pawn.svg',
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     height: 28,
//                                     width: 28,
//                                     child: SvgPicture.asset(
//                                       'assets/images/svg/svg-figures/black_bishop.svg',
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     height: 28,
//                                     width: 28,
//                                     child: SvgPicture.asset(
//                                       'assets/images/svg/svg-figures/black_rook.svg',
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       height: getHeight(context, 20),
//                     ),
//
//                     GameBoard(),
//                     SizedBox(
//                       height: getHeight(context, 20),
//                     ),
//                     Padding(
//                       padding: EdgeInsets.only(
//                         right: getWidth(context, 20),
//                       ),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                           GestureDetector(
//                             onTap: () {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => SwiperExample()),
//                               );
//                             },
//                             child: SizedBox(
//                               width: 84,
//                               height: 30,
//                               child: Row(
//                                 children: [
//                                   SizedBox(
//                                     height: 28,
//                                     width: 28,
//                                     child: SvgPicture.asset(
//                                       'assets/images/svg/svg-figures/white_pawn.svg',
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     height: 28,
//                                     width: 28,
//                                     child: SvgPicture.asset(
//                                       'assets/images/svg/svg-figures/white_knight.svg',
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     height: 28,
//                                     width: 28,
//                                     child: SvgPicture.asset(
//                                       'assets/images/svg/svg-figures/white_pawn.svg',
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       height: getHeight(context, 30),
//                     ),
//                     // Padding(
//                     //   padding: const EdgeInsets.symmetric(horizontal:
//                     //       80.0),
//                     //   child: SizedBox(
//                     //     width: double.infinity,
//                     //     child: Row(
//                     //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     //       children: [
//                     //         SizedBox(
//                     //           height: 71,
//                     //           width: 72,
//                     //           child: Column(
//                     //             children: [
//                     //               SizedBox(
//                     //                 height: 44,
//                     //                 child: InkWell(
//                     //                   onTap: () {},
//                     //                   customBorder: const CircleBorder(
//                     //                     side: BorderSide(
//                     //                       width: 0,
//                     //                     ),
//                     //                   ),
//                     //                   child: Container(
//                     //                     decoration: const BoxDecoration(
//                     //                       shape: BoxShape.circle,
//                     //                       // ignore: unnecessary_const
//                     //                       color: const Color.fromRGBO(
//                     //                           255, 255, 255, 0.1),
//                     //                     ),
//                     //                     child: Center(
//                     //                       child: SvgPicture.asset(
//                     //                           'assets/images/svg/hand.svg'),
//                     //                     ),
//                     //                   ),
//                     //                 ),
//                     //               ),
//                     //               const SizedBox(
//                     //                 height: 5,
//                     //               ),
//                     //               const Text(
//                     //                 'Offer draw',
//                     //                 style: TextStyle(
//                     //                   fontWeight: FontWeight.w400,
//                     //                   fontSize: 14,
//                     //                   fontFamily: 'Inter',
//                     //                   color: Color.fromRGBO(255, 255, 255, 1),
//                     //                 ),
//                     //               ),
//                     //             ],
//                     //           ),
//                     //         ),
//                     //         SizedBox(
//                     //           height: 71,
//                     //           width: 72,
//                     //           child: Column(
//                     //             children: [
//                     //               Align(
//                     //                 alignment: Alignment.topCenter,
//                     //                 child: SizedBox(
//                     //                   height: 44,
//                     //                   child: InkWell(
//                     //                     onTap: () {},
//                     //                     customBorder: const CircleBorder(
//                     //                       side: BorderSide(
//                     //                         width: 0,
//                     //                       ),
//                     //                     ),
//                     //                     child: Container(
//                     //                       decoration: const BoxDecoration(
//                     //                         shape: BoxShape.circle,
//                     //                         color: Color.fromRGBO(
//                     //                             255, 255, 255, 0.1),
//                     //                       ),
//                     //                       child: Center(
//                     //                         child: SvgPicture.asset(
//                     //                             'assets/images/svg/flag.svg'),
//                     //                       ),
//                     //                     ),
//                     //                   ),
//                     //                 ),
//                     //               ),
//                     //               const SizedBox(
//                     //                 height: 5,
//                     //               ),
//                     //               const Text(
//                     //                 'Resign',
//                     //                 style: TextStyle(
//                     //                   fontWeight: FontWeight.w400,
//                     //                   fontSize: 14,
//                     //                   fontFamily: 'Inter',
//                     //                   color: Color.fromRGBO(255, 255, 255, 1),
//                     //                 ),
//                     //               ),
//                     //             ],
//                     //           ),
//                     //         ),
//                     //         SizedBox(
//                     //           height: 71,
//                     //           width: 72,
//                     //           child: Column(
//                     //             children: [
//                     //               Align(
//                     //                 alignment: Alignment.topCenter,
//                     //                 child: SizedBox(
//                     //                   height: 44,
//                     //                   child: InkWell(
//                     //                     onTap: () {},
//                     //                     customBorder: const CircleBorder(
//                     //                       side: BorderSide(
//                     //                         width: 0,
//                     //                       ),
//                     //                     ),
//                     //                     child: Container(
//                     //                       decoration: const BoxDecoration(
//                     //                         shape: BoxShape.circle,
//                     //                         color: Color.fromRGBO(
//                     //                             255, 255, 255, 0.1),
//                     //                       ),
//                     //                       child: Center(
//                     //                         child: SvgPicture.asset(
//                     //                             'assets/images/svg/message.svg'),
//                     //                       ),
//                     //                     ),
//                     //                   ),
//                     //                 ),
//                     //               ),
//                     //               const SizedBox(
//                     //                 height: 5,
//                     //               ),
//                     //               const Text(
//                     //                 'Chat',
//                     //                 style: TextStyle(
//                     //                   fontWeight: FontWeight.w400,
//                     //                   fontSize: 14,
//                     //                   fontFamily: 'Inter',
//                     //                   color: Color.fromRGBO(255, 255, 255, 1),
//                     //                 ),
//                     //               ),
//                     //             ],
//                     //           ),
//                     //         )
//                     //       ],
//                     //     ),
//                     //   ),
//                     // ),
//                   ],
//                 ),
//               ),
//               backgroundColor: Colors.transparent,
//             ),
//           );
//         });
//   }
// }
