// import 'package:flutter/material.dart';
// import 'package:hexcolor/hexcolor.dart';
// import 'package:social_network/constants.dart';
// import 'package:social_network/core/widgets/button_widget.dart';
// import 'package:social_network/core/widgets/gradient_text.dart';
// import 'package:social_network/features/messages_page/models/message_model.dart';
//
// class AppBarWidget extends StatelessWidget {
//   const AppBarWidget({required this.messageModel, super.key});
//
//   final MessageModel messageModel;
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Padding(
//       padding: EdgeInsets.symmetric(horizontal: 18 * rw(context)),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           ButtonWidget(
//             onTap: () => Navigator.pop(context),
//             child: SizedBox(
//                 height: 42 * rw(context),
//                 width: 42 * rw(context),
//                 child: Icon(Icons.arrow_back_ios, color: HexColor('#171717'))),
//           ),
//           Expanded(
//             child:
//                 Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//               Text(messageModel.ownerName,
//                   style: getStyle(
//                       fontSize: 20,
//                       height: 28 / 20,
//                       fontWeight: FontWeight.w500,
//                       color: HexColor('#000000'))),
//               if (messageModel.isActive)
//                 GradientText(
//                   'Онлайн',
//                   gradient: LinearGradient(
//                       begin: Alignment.topCenter,
//                       end: Alignment.bottomCenter,
//                       colors: [
//                         HexColor('#00FFD1').withOpacity(0.5),
//                         HexColor('#6BFA79').withOpacity(0.5)
//                       ]),
//                   style: getStyle(
//                       fontSize: 14,
//                       height: 18 / 14,
//                       fontWeight: FontWeight.w500,
//                       color: HexColor('#00FFD1')),
//                 )
//             ]),
//           ),
//           SizedBox(
//             height: 42 * rw(context),
//             width: 42 * rw(context),
//             child: Image.asset(
//               messageModel.imageUrl,
//             ),
//           )
//         ],
//       ),
//     ));
//   }
// }
