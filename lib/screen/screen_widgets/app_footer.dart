import 'package:flutter/material.dart';
import 'package:tech_tronex/helper/app_text.dart';
import 'package:tech_tronex/screen/sections/home/home_screen.dart';
import 'package:tech_tronex/screen/sections/products/product_screen.dart';
import 'package:tech_tronex/util/app_colors.dart';
import 'package:tech_tronex/util/responsive_screen.dart';
import 'package:tech_tronex/widgets/app_icon_button.dart';
import 'package:tech_tronex/widgets/app_text_button.dart';
import 'package:url_launcher/url_launcher.dart';

class AppFooter extends StatelessWidget {
  const AppFooter({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    bool widescreen = (ResponsiveScreenView.isDesktop(context) ||
        ResponsiveScreenView.isTablet(context));
    return Container(
      padding: widescreen ? const EdgeInsets.all(20) : const EdgeInsets.all(5),
      color: AppColors.touchColor,
      width: double.infinity,
      height: widescreen ? 260 : 400,
      child: widescreen
          ? const Row(children: [
              FooterCompanyInfo(),
              Spacer(),
              SizedBox(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [FooterNavBar(), FooterLegal()],
                ),
              ),
            ])
          : Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const FooterCompanyInfo(),
              const SizedBox(height: 60),
              SizedBox(
                width: media.width < 280 ? 280 : null,
                child: const Row(
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

  void _launchURL(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }

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
                function: () {
                  _launchURL(
                      'https://web.facebook.com/profile.php?id=61551731913755');
                },
              ),
              const SizedBox(width: 20),
              AppIconButton(
                icon: 'asset/instagram.svg',
                function: () {
                  _launchURL('https://www.instagram.com/techtronex_embedded/');
                },
              ),
              const SizedBox(width: 20),
              AppIconButton(
                icon: 'asset/twitter.svg',
                function: () {
                  _launchURL('https://twitter.com/Techtronexx');
                },
              ),
              const SizedBox(width: 20),
              AppIconButton(
                icon: 'asset/LinkedIn.svg',
                size: 20,
                function: () {
                  _launchURL(
                      'https://www.linkedin.com/company/techtronex-embedded');
                },
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
      width: 105,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TitleText(
            text: 'Quick Links',
            color: Colors.white,
          ),
          const SizedBox(height: 10),
          AppTextButton(
              text: 'Home',
              function: () {
                Navigator.pushReplacementNamed(
                    context, HomeScreenView.routeName);
              }),
          const SizedBox(height: 10),
          AppTextButton(
              text: 'Product',
              function: () {
                Navigator.pushReplacementNamed(
                    context, ProductScreen.routeName);
              }),
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
      width: 158,
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
