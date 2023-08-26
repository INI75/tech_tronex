import 'package:flutter/material.dart';
import 'package:tech_tronex/helper/app_text.dart';
import 'package:tech_tronex/util/app_colors.dart';
import 'package:tech_tronex/util/responsive_screen.dart';
import 'package:tech_tronex/widgets/app_icon_button.dart';

class AppFooter extends StatelessWidget {
  const AppFooter({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    bool widescreen = (ResponsiveScreenView.isDesktop(context) ||
        ResponsiveScreenView.isTablet(context));
    return Container(
      padding: const EdgeInsets.all(20),
      color: AppColors.touchColor,
      width: double.infinity,
      height: widescreen ? 260 : 700,
      child: Row(children: [FooterCompanyInfo()]),
    );
  }
}

class FooterCompanyInfo extends StatelessWidget {
  const FooterCompanyInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: 220,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TitleText(
            text: 'Tech Tronex',
            color: Colors.white,
          ),
          SizedBox(height: 10),
          SmallBodyText(
            text: 'info@techtronex.com',
            color: Colors.white,
          ),
          SizedBox(height: 10),
          SmallBodyText(
            text: '+0801234567',
            color: Colors.white,
            size: 17,
          ),
          SizedBox(height: 10),
          SmallBodyText(
            text: 'Delta State, Nigeria',
            color: Colors.white,
          ),
           SizedBox(height: 10),
           Row(children: [
            AppIconButton(icon: '', function: () {
              
            },)
           ],)
        ],
      ),
    );
  }
}
