import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tech_tronex/helper/app_text.dart';
import 'package:tech_tronex/screen/screen_widgets/app_footer.dart';
import 'package:tech_tronex/screen/screen_widgets/app_header.dart';
import 'package:tech_tronex/screen/sections/home/widgets/home_card.dart';
import 'package:tech_tronex/util/app_colors.dart';
import 'package:tech_tronex/util/responsive_screen.dart';

class HomeScreenView extends StatefulWidget {
  const HomeScreenView({super.key});
  static const routeName = '/homescreen';

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
      body: SizedBox(
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
            Container(
              width: media.width * .8,
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  HeaderBoldText(
                    text: 'About Us',
                  ),
                  SizedBox(height: 20),
                  BodyText(
                      maxLines: 40,
                      size: 17,
                      text:
                          "Welcome to Techtronex Embedded, the driving force behind mobile, affordable energy solutions for SMEs, students, families, and remote workers. At Techtronex Embedded, we're dedicated to powering the future, one portable solution at a time. Our mission is clear: to empower businesses, students, and households with accessible, sustainable energy, transforming the way we work, study, and live. Driven by our core values of customer centricity, innovation, quality, sustainability, and continuous improvement, we go beyond technology. We deliver solutions that not only meet your energy needs but also align with your values and aspirations. Join us on this electrifying journey toward a brighter, greener more connected tomorrow. We take pride in the diversity, skills, and dedication of our team, as they are the driving force behind our commitment to excellence and delivering innovative energy solutions to our customers. "),
                  SizedBox(height: 15),
                  Divider(),
                  widescreen
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            HomeCardStatment(
                                image: 'asset/mission.svg',
                                title: 'Mission',
                                description:
                                    "We are committed to deliver dependable, affordable mobile  energy solutions, to SME's, students, remote workers and families, to ensure an increase in productivity, advance quality livelihood and environmental sustainability",
                                placeUp: true),
                            HomeCardStatment(
                                image: 'asset/vision.svg',
                                title: 'Vision',
                                description:
                                    'Our vision is to enhance the well-being and productivity of African communities by fostering energy self-sufficiency across the region.',
                                placeUp: false),
                          ],
                        )
                      : Column(
                          children: [
                            HomeCardStatment(
                                image: 'asset/mission.svg',
                                title: 'Mission',
                                description:
                                    "We are committed to deliver dependable, affordable mobile  energy solutions, to SME's, students, remote workers and families, to ensure an increase in productivity, advance quality livelihood and environmental sustainability",
                                placeUp: true),
                            const SizedBox(height: 15),
                            HomeCardStatment(
                                image: 'asset/vision.svg',
                                title: 'Vision',
                                description:
                                    'Our vision is to enhance the well-being and productivity of African communities by fostering energy self-sufficiency across the region.',
                                placeUp: false),
                          ],
                        )
                ],
              ),
            ),
            const AppFooter()
          ],
        ),
      )),
    );
  }
}
