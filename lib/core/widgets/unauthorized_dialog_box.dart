import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:social_network/core/router/app_router_names.dart';

import '../../generated/l10n.dart';

class UnauthorizedDialogPage extends StatelessWidget {
  const UnauthorizedDialogPage({super.key});

  @override
  Widget build(BuildContext context) {
    var padding = MediaQuery.paddingOf(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(height: padding.top),
            Row(
              children: [
                IconButton(
                  padding: EdgeInsets.zero,
                  constraints: const BoxConstraints(),
                  alignment: Alignment.center,
                  style: const ButtonStyle(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  onPressed: () {
                    context.pop();
                  },
                  icon: const Icon(Icons.arrow_back_ios),
                ),
              ],
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(S.of(context).sign_up_in_w),
                  const SizedBox(height: 20),
                  ButtonOfUnAuthorizedDialogPage(
                    onPressed: () {
                      context.goNamed(AppRouterNames.registrationPage);
                    },
                    title: S.of(context).sign_up,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(child: Divider()),
                      SizedBox(width: 10),
                      Text(S.of(context).or),
                      SizedBox(width: 10),
                      Expanded(child: Divider()),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(S.of(context).already_have_an_account),
                  SizedBox(height: 20),
                  ButtonOfUnAuthorizedDialogPage(
                    onPressed: () {
                      context.goNamed(AppRouterNames.authPage);
                    },
                    title: S.of(context).sign_in,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonOfUnAuthorizedDialogPage extends StatelessWidget {
  const ButtonOfUnAuthorizedDialogPage({
    super.key,
    required this.onPressed,
    required this.title,
  });

  final VoidCallback onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: const TextStyle(
          fontFamily: 'Inter',
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
    );
  }
}
