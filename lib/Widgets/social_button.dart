import 'package:flutter/material.dart';
import 'package:flutter_widgets/theme/app_color.dart';

class SocialButton extends StatelessWidget {
  const SocialButton(
      {super.key, required this.label, required this.icon, this.onPresssed});
  final String label;
  final Widget icon;
  final VoidCallback? onPresssed;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColor.pill,
      borderRadius: BorderRadius.circular(14),
      child: InkWell(
        onTap: onPresssed,
        borderRadius: BorderRadius.circular(14),
        child: Container(
          height: 56,
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: AppColor.border)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 24,
                height: 24,
                child: icon,
              ),
              const SizedBox(
                width: 10,
              ),
              Flexible(
                  child: Text(
                label,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  color: AppColor.textWhite,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
