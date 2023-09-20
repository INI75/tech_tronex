import 'package:flutter/material.dart';
import 'package:tech_tronex/helper/app_text.dart';
import 'package:tech_tronex/util/app_colors.dart';
import 'package:tech_tronex/util/responsive_screen.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(
      {super.key,
      required this.image,
      required this.title,
      required this.title2,
      required this.description1,
      required this.description2});

  final String image;
  final String title;
  final String title2;
  final String description1;
  final String description2;

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    bool widescreen = (ResponsiveScreenView.isDesktop(context) ||
        ResponsiveScreenView.isTablet(context));

    var aimage = SizedBox(
      height: widescreen ? 300 : 200,
      width: widescreen ? media.width * .3 : media.width * .8,
      child: Image.asset(image),
    );
    var btexts = SizedBox(
      width: widescreen ? media.width * .3 : media.width * .8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleText(text: title),
          const SizedBox(height: 10),
          BodyMediumText(text: description1, maxLines: 50, color: Colors.black),
          const SizedBox(height: 15),
          TitleText(text: title2),
          const SizedBox(height: 10),
          BodyMediumText(text: description2, maxLines: 50, color: Colors.black),
        ],
      ),
    );

    return Container(
      color: AppColors.backgroundGray,
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.symmetric(vertical: 14),
      width: media.width * .8,
      // height: widescreen ? 300 : 450,
      child: widescreen
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [aimage, btexts],
            )
          : Column(children: [btexts, const SizedBox(height: 20), aimage]),
    );
  }
}
