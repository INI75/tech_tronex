import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tech_tronex/util/app_colors.dart';

class HeaderBoldText extends StatelessWidget {
  const HeaderBoldText(
      {super.key,
      this.color,
      required this.text,
      this.size,
      this.height,
      this.overflow,
      this.maxLines,
      this.softWrap,
      this.textAlign,
      this.fontWeight});
  final Color? color;
  final String text;
  final int? maxLines;
  final bool? softWrap;
  final double? size;
  final double? height;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      softWrap: softWrap,
      textAlign: textAlign,
      overflow: overflow ?? TextOverflow.ellipsis,
      style: GoogleFonts.firaSansCondensed(
          color: color ?? Colors.black,
          fontSize: size ?? 24,
          fontWeight: fontWeight ?? FontWeight.w700),
    );
  }
}

class HeroTitleText extends StatelessWidget {
  const HeroTitleText(
      {super.key,
      this.color,
      required this.text,
      this.size,
      this.height,
      this.overflow,
      this.maxLines,
      this.softWrap,
      this.textAlign,
      this.fontWeight,
      this.decoration});
  final Color? color;
  final String text;
  final int? maxLines;
  final bool? softWrap;
  final double? size;
  final double? height;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final FontWeight? fontWeight;
  final TextDecoration? decoration;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      softWrap: softWrap,
      textAlign: textAlign,
      overflow: overflow ?? TextOverflow.ellipsis,
      style: TextStyle(
        fontFamily: 'Satoshi',
        decoration: decoration,
        color: color ?? AppColors.complementColor,
        fontSize: size ?? 50,
        fontWeight: fontWeight ?? FontWeight.w700,
      ),
    );
  }
}

class TitleText extends StatelessWidget {
  const TitleText(
      {super.key,
      this.color,
      required this.text,
      this.size,
      this.height,
      this.overflow,
      this.maxLines,
      this.softWrap,
      this.textAlign,
      this.fontWeight});
  final Color? color;
  final String text;
  final int? maxLines;
  final bool? softWrap;
  final double? size;
  final double? height;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      softWrap: softWrap,
      textAlign: textAlign,
      overflow: overflow ?? TextOverflow.ellipsis,
      style: TextStyle(
        fontFamily: 'Satoshi',
        color: color ?? Colors.black,
        fontSize: size ?? 18,
        fontWeight: fontWeight ?? FontWeight.w700,
      ),
    );
  }
}

class BodyText extends StatelessWidget {
  const BodyText(
      {super.key,
      this.color,
      required this.text,
      this.size,
      this.height,
      this.overflow,
      this.maxLines,
      this.softWrap,
      this.textAlign,
      this.fontWeight,
      this.decoration});
  final Color? color;
  final String text;
  final int? maxLines;
  final bool? softWrap;
  final double? size;
  final double? height;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final TextDecoration? decoration;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      softWrap: softWrap,
      textAlign: textAlign,
      overflow: overflow ?? TextOverflow.ellipsis,
      style: TextStyle(
        decoration: decoration,
        fontFamily: 'Satoshi',
        color: color ?? Colors.black,
        fontSize: size ?? 14,
        fontWeight: fontWeight ?? FontWeight.w400,
      ),
    );
  }
}

class SmallBodyText extends StatelessWidget {
  const SmallBodyText(
      {super.key,
      this.color,
      required this.text,
      this.size,
      this.height,
      this.overflow,
      this.maxLines,
      this.softWrap,
      this.textAlign,
      this.fontWeight,
      this.decoration});
  final Color? color;
  final String text;
  final int? maxLines;
  final bool? softWrap;
  final double? size;
  final double? height;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final TextDecoration? decoration;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      softWrap: softWrap,
      textAlign: textAlign,
      overflow: overflow ?? TextOverflow.ellipsis,
      style: TextStyle(
        fontFamily: 'Satoshi',
        color: color ?? Colors.black,
        fontSize: size ?? 15,
        decoration: decoration,
        fontWeight: fontWeight ?? FontWeight.w400,
      ),
    );
  }
}

class BodyMediumText extends StatelessWidget {
  const BodyMediumText(
      {super.key,
      this.color,
      required this.text,
      this.size,
      this.height,
      this.overflow,
      this.maxLines,
      this.softWrap,
      this.textAlign,
      this.fontWeight});
  final Color? color;
  final String text;
  final int? maxLines;
  final bool? softWrap;
  final double? size;
  final double? height;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      softWrap: softWrap,
      textAlign: textAlign,
      overflow: overflow ?? TextOverflow.ellipsis,
      style: TextStyle(
        fontFamily: 'Satoshi',
        color: color ?? AppColors.complementColor,
        fontSize: size ?? 16,
        fontWeight: fontWeight ?? FontWeight.w500,
      ),
    );
  }
}
