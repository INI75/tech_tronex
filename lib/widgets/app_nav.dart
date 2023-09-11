import 'package:flutter/material.dart';
import 'package:tech_tronex/helper/app_text.dart';
import 'package:tech_tronex/util/app_colors.dart';

class NavTextButton extends StatelessWidget {
  const NavTextButton(
      {super.key,
      required this.label,
      required this.selected,
      required this.function});

  final String label;
  final bool selected;
  final VoidCallback function;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 34,
      margin: const EdgeInsets.only(top: 10),
      child: InkWell(
        onTap: function,
        child: Column(
          children: [
            TitleText(
              text: label,
              color: AppColors.touchColor,
            ),
            const SizedBox(width: 4),
            if (selected)
              Container(
                width: (30 + (5.9 * label.length)),
                height: 1.4,
                color: AppColors.complementColor,
              )
          ],
        ),
      ),
    );
  }
}

//

class NavTextButton2 extends StatelessWidget {
  const NavTextButton2(
      {super.key, required this.label, required this.function});

  final String label;
  final VoidCallback function;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      margin: const EdgeInsets.only(left: 20, top: 15),
      padding: const EdgeInsets.only(left: 20),
      width: 200,
      decoration: const BoxDecoration(
        color: AppColors.complementColor,
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(8)),
      ),
      child: InkWell(
        onTap: function,
        child: TitleText(
          text: label,
          color: AppColors.touchColor,
        ),
      ),
    );
  }
}
