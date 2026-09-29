import 'package:flutter/material.dart';

import '../theme/app_color.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key, this.label = 'OR'});
  final String label;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
            child: Divider(
          color: AppColor.border,
          thickness: 1,
        )),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Text(
            label,
            style: const TextStyle(color: AppColor.textMuted, fontSize: 13),
          ),
        ),
        const Expanded(
          child: Divider(
            color: AppColor.border,
            thickness: 1,
          ),
        )
      ],
    );
  }
}
