import 'package:flutter/material.dart';

import '../theme/app_color.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key, this.height = 58});
  final double height;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'D:\flutters app\flutter_widgets\assets\images\icons8-google-logo-40.png',
      height: height,
      filterQuality: FilterQuality.high,
      errorBuilder: (context, error, stackTree) =>
          _FallbackWordMark(height: height),
    );
  }
}

class _FallbackWordMark extends StatelessWidget {
  const _FallbackWordMark({super.key, required this.height});
  final double height;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.bolt, color: AppColor.textWhite, size: height),
        const SizedBox(
          width: 6,
        ),
        Text(
          'Floxlt',
          style: TextStyle(
              color: AppColor.textWhite,
              fontSize: height * 0.9,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.5),
        )
      ],
    );
  }
}
