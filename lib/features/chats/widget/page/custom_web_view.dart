// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:go_router/go_router.dart';
// import 'package:social_network/features/chats/models/apps_model/apps_model.dart';
// import 'package:webview_flutter/webview_flutter.dart';
//
// class CustomWebView extends StatefulWidget {
//   final AppModel appModel;
//
//   const CustomWebView({Key? key, required this.appModel}) : super(key: key);
//
//   @override
//   State<CustomWebView> createState() => _CustomWebViewState();
// }
//
// class _CustomWebViewState extends State<CustomWebView> {
//   late final WebViewController _controller;
//
//   @override
//   void initState() {
//     super.initState();
//     try {
//       _controller = WebViewController()
//         ..setJavaScriptMode(JavaScriptMode.unrestricted)
//         ..loadRequest(Uri.parse(widget.appModel.url));
//       debugPrint("WebViewController initialized successfully.");
//     } catch (e) {
//       debugPrint("Error initializing WebViewController: $e");
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge,
//         overlays: [SystemUiOverlay.top]);
//     SystemChrome.setSystemUIOverlayStyle(
//       const SystemUiOverlayStyle(
//         statusBarColor: Colors.transparent,
//         // systemNavigationBarColor: Colors.black,
//         statusBarIconBrightness: Brightness.light,
//         // systemNavigationBarIconBrightness: Brightness.light,
//       ),
//     );
//     var paddig = MediaQuery.paddingOf(context);
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Column(
//         children: [
//           SizedBox(height: paddig.top),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20),
//             child: GestureDetector(
//               onVerticalDragUpdate: (details) {
//                 // Если пользователь тянет вниз, можно обработать
//                 if (details.delta.dy > 0) {
//                   print('Свайп вниз');
//                 }
//               },
//               onVerticalDragEnd: (details) {
//                 // Логика при завершении свайпа
//                 if (details.primaryVelocity != null &&
//                     details.primaryVelocity! > 500) {
//                   // Если скорость свайпа вниз больше 500, закрываем экран
//                   context.pop();
//                 }
//               },
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   InkWell(
//                     onTap: () {
//                       context.pop();
//                     },
//                     child: Icon(
//                       Icons.close,
//                       size: 26,
//                       color: Colors.black,
//                     ),
//                   ),
//                   Text(
//                     widget.appModel.name ?? '',
//                     style: TextStyle(
//                       fontSize: 24,
//                       fontFamily: "Inter",
//                       color: Colors.black,
//                     ),
//                   ),
//                   SizedBox.shrink(),
//                 ],
//               ),
//             ),
//           ),
//           Expanded(
//             child: WebViewWidget(controller: _controller),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:social_network/features/chats/models/apps_model/apps_model.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CustomWebView extends StatefulWidget {
  final AppModel appModel;

  const CustomWebView({Key? key, required this.appModel}) : super(key: key);

  @override
  State<CustomWebView> createState() => _CustomWebViewState();
}

class _CustomWebViewState extends State<CustomWebView> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    try {
      _controller = WebViewController()
        ..setJavaScriptMode(JavaScriptMode.unrestricted)
        ..loadRequest(Uri.parse(widget.appModel.url));
      debugPrint("WebViewController initialized successfully.");
    } catch (e) {
      debugPrint("Error initializing WebViewController: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge,
        overlays: [SystemUiOverlay.top]);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        // systemNavigationBarColor: Colors.black,
        statusBarIconBrightness: Brightness.light,
        // systemNavigationBarIconBrightness: Brightness.light,
      ),
    );

    double topPadding = MediaQuery.paddingOf(context).top;
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Stack(
          children: [
            WebViewWidget(controller: _controller),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: SizedBox(
                height: topPadding + 5,
                child: ClipRRect(
                  child: Column(
                    children: [
                      BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: SizedBox(height: topPadding / 3),
                      ),
                      BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
                        child: SizedBox(height: topPadding / 3),
                      ),
                      BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                        child: SizedBox(height: topPadding / 3),
                      ),
                      BackdropFilter(
                        filter: ImageFilter.blur(sigmaY: 0.001, sigmaX: 0.001),
                        child: const SizedBox(height: 5),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: 50,
              left: 20,
              child: InkWell(
                onTap: () {
                  context.pop();
                },
                child: Icon(
                  Icons.close,
                  size: 26,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
