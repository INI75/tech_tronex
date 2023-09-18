import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tech_tronex/helper/app_text.dart';
import 'package:tech_tronex/screen/screen_widgets/app_footer.dart';
import 'package:tech_tronex/screen/screen_widgets/app_header.dart';
import 'package:tech_tronex/util/app_colors.dart';
import 'package:tech_tronex/util/responsive_screen.dart';

class HomeScreenView extends StatefulWidget {
  const HomeScreenView({super.key});

  @override
  State<HomeScreenView> createState() => _HomeScreenViewState();
}

class _HomeScreenViewState extends State<HomeScreenView> {
  late final CarouselController _carouselController;

  @override
  void initState() {
    // TODO: implement initState
    _carouselController = CarouselController();
    super.initState();
  }

  List images = [
    'asset/1.jpg',
    'asset/2.jpg',
    'asset/3.jpg',
    'asset/4.jpg',
    'asset/5.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    bool widescreen = (ResponsiveScreenView.isDesktop(context) ||
        ResponsiveScreenView.isTablet(context));
    return Scaffold(
      body: Container(
          padding: EdgeInsets.symmetric(),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 600,
                  width: media.width,
                  child: Stack(
                    children: [
                      SizedBox(
                        width: media.width,
                        child: CarouselSlider(
                            items: images
                                .map((e) => SizedBox(
                                      height: 600,
                                      width: media.width,
                                      child: Image.asset(
                                        e,
                                        fit: BoxFit.fill,
                                      ),
                                    ))
                                .toList(),
                            options: CarouselOptions(
                              initialPage: 1,
                              enableInfiniteScroll: true,
                              enlargeCenterPage: true,
                              height: 600,
                              autoPlay: true,
                              viewportFraction: 1,
                            )),
                      ),
                      const Positioned(
                        top: 10,
                        child: ScreenAppBar(),
                      ),
                      Positioned(
                        bottom: 100,
                        left: widescreen ? 70 : 30,
                        child: SizedBox(
                          child: HeaderBoldText(
                              text:
                                  'ILLUMINATING LIVES,\nENERGY FREEDOM\nACCROSS AFRICA.',
                              size: widescreen ? 50 : 25,
                              color: AppColors.themeColor),
                        ),
                      ),
                    ],
                  ),
                ),
               const  AppFooter()
              ],
            ),
          )),
    );
  }
}
