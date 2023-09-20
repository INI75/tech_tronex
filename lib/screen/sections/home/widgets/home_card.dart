import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tech_tronex/helper/app_text.dart';

class HomeCardStatment extends StatelessWidget {
  const HomeCardStatment(
      {super.key,
      required this.image,
      required this.title,
      required this.description,
      required this.placeUp});

  final String image;
  final String title;
  final String description;
  final bool placeUp;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: Column(
        children: [
          if (placeUp) SvgPicture.asset(image,),
          HeaderBoldText(
            text: title,
          ),
          const SizedBox(height: 20),
          BodyText(maxLines: 40, size: 17, text: description),
          const SizedBox(height: 15),
          if (!placeUp) SvgPicture.asset(image,)
        ],
      ),
    );
  }
}
