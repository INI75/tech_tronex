import 'package:flutter/material.dart';
import 'package:tech_tronex/helper/app_text.dart';
import 'package:tech_tronex/util/app_colors.dart';
import 'package:tech_tronex/util/responsive_screen.dart';
import 'package:tech_tronex/widgets/app_icon_button.dart';
import 'package:tech_tronex/widgets/app_text_button.dart';

class AppFooter extends StatelessWidget {
  const AppFooter({super.key});

  @override
  Widget build(BuildContext context) {
    // var media = MediaQuery.of(context).size;
    bool widescreen = (ResponsiveScreenView.isDesktop(context) ||
        ResponsiveScreenView.isTablet(context));
    return Container(
      padding: widescreen ? const EdgeInsets.all(20) : const EdgeInsets.all(8),
      color: AppColors.touchColor,
      width: double.infinity,
      height: widescreen ? 260 : 450,
      child: widescreen
          ? const Row(children: [
              FooterCompanyInfo(),
              Spacer(),
              SizedBox(
                width: 240,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [FooterNavBar(), FooterLegal()],
                ),
              ),
            ])
          : const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  FooterCompanyInfo(),
                  SizedBox(height: 60),
                  SizedBox(
                    // width: 240,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FooterNavBar(),
                        Spacer(),
                        FooterLegal(),
                      ],
                    ),
                  ),
                ]),
    );
  }
}

class FooterCompanyInfo extends StatelessWidget {
  const FooterCompanyInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TitleText(
            text: 'Tech Tronex',
            color: Colors.white,
          ),
          const SizedBox(height: 10),
          const SmallBodyText(
            text: 'info@techtronex.com',
            color: Colors.white,
          ),
          const SizedBox(height: 10),
          const SmallBodyText(
            text: '+0801234567',
            color: Colors.white,
            size: 17,
          ),
          const SizedBox(height: 10),
          const SmallBodyText(
            text: 'Delta State, Nigeria',
            color: Colors.white,
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              AppIconButton(
                icon: 'asset/facebook.svg',
                function: () {},
              ),
              const SizedBox(width: 20),
              AppIconButton(
                icon: 'asset/instagram.svg',
                function: () {},
              ),
              const SizedBox(width: 20),
              AppIconButton(
                icon: 'asset/twitter.svg',
                function: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}

//

class FooterNavBar extends StatelessWidget {
  const FooterNavBar({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 110,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TitleText(
            text: 'Quick Links',
            color: Colors.white,
          ),
          const SizedBox(height: 10),
          AppTextButton(text: 'Home', function: () {}),
          const SizedBox(height: 10),
          AppTextButton(text: 'Product', function: () {}),
          const SizedBox(height: 10),
          AppTextButton(text: 'Contact ', function: () {}),
        ],
      ),
    );
  }
}

///
///

class FooterLegal extends StatelessWidget {
  const FooterLegal({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TitleText(
            text: 'Legal',
            color: Colors.white,
          ),
          const SizedBox(height: 10),
          AppTextButton(text: 'Legal Notice', function: () {}),
          const SizedBox(height: 10),
          AppTextButton(text: 'Privacy Policy', function: () {}),
          const SizedBox(height: 10),
          AppTextButton(text: 'Terms And Conditions ', function: () {}),
        ],
      ),
    );
  }
}
