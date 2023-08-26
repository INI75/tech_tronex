import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppIconButton extends StatelessWidget {
  const AppIconButton(
      {super.key,
      required this.icon,
      this.color,
      this.size,
      required this.function,
      this.customIcon});

  final String icon;
  final Color? color;
  final double? size;
  final VoidCallback function;
  final Widget? customIcon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: function,
        child: customIcon ??
            SvgPicture.asset(
              icon,
              height: size,
              width: size,
              
            ));
  }
}
