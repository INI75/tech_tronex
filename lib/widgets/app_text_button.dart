import 'package:flutter/material.dart';
import 'package:tech_tronex/helper/app_text.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton(
      {super.key,
      required this.text,
      required this.function,
      this.size,
      this.color,
      this.decoration});

  final String text;
  final VoidCallback function;
  final double? size;
  final Color? color;
  final TextDecoration? decoration;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: SmallBodyText(
        text: text,
        size: size,
        decoration: decoration,
        color: color ?? Colors.white,
      ),
    );
  }
}
