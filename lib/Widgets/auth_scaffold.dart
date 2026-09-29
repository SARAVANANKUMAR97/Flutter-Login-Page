import 'package:flutter/material.dart';

import '../theme/app_color.dart';

class AuthScaffold extends StatelessWidget {
  const AuthScaffold({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
          decoration:
              const BoxDecoration(gradient: AppColor.backgroundGradient),
          child: DecoratedBox(
            decoration: BoxDecoration(gradient: AppColor.lowGradient),
            child: SafeArea(
              child: LayoutBuilder(builder: (context, constraints) {
                return SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 16,
                  ),
                  child: ConstrainedBox(
                      constraints:
                          BoxConstraints(minHeight: constraints.maxHeight - 32),
                      child: IntrinsicHeight(child: child)),
                );
              }),
            ),
          )),
    );
  }
}
