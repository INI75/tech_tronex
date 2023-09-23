import 'package:flutter/material.dart';
import 'package:tech_tronex/screen/sections/home/home_screen.dart';
import 'package:tech_tronex/screen/sections/products/product_screen.dart';
import 'package:tech_tronex/util/app_colors.dart';
import 'package:tech_tronex/util/responsive_screen.dart';
import 'package:tech_tronex/widgets/app_nav.dart';

class ScreenAppBar extends StatefulWidget {
  const ScreenAppBar({super.key});

  @override
  State<ScreenAppBar> createState() => _ScreenAppBarState();
}

class _ScreenAppBarState extends State<ScreenAppBar>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> animation;
  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  bool navBar = false;

  void toggleChoice() {
    setState(() {
      navBar = !navBar;
      navBar ? _animationController.forward() : _animationController.reverse();
    });
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
      if (ResponsiveScreenView.isDesktop(context) ||
          ResponsiveScreenView.isTablet(context))
        Container(
            width: media.width,
            height: 100,
            padding: const EdgeInsets.only(right: 25),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: media.width * .1),
                SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.asset('asset/logo1.png'),
                ),
                const Spacer(),
                SizedBox(
                  width: 400,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        NavTextButton(
                            label: 'HOME',
                            selected: false,
                            function: () {
                              Navigator.pushReplacementNamed(
                                  context, HomeScreenView.routeName);
                            }),
                        NavTextButton(
                            label: 'PRODUCTS',
                            selected: false,
                            function: () {
                              Navigator.pushReplacementNamed(
                                  context, ProductScreen.routeName);
                            }),
                      ]),
                ),
              ],
            )),
      // if (ResponsiveScreen.isTablet(context))
      if (ResponsiveScreenView.isMobile(context))
        SizedBox(
          height: 230,
          width: media.width,
          child: Stack(
            children: [
              SizedBox(
                width: media.width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: media.width * .05),
                    Container(
                      padding: const EdgeInsets.only(right: 25),
                      height: 80,
                      child: Image.asset('asset/logo1.png'),
                      width: 80,
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 20,
                right: 0,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 1000),
                  height: navBar ? 300 : 0,
                  width: navBar ? 180 : 0,
                  curve: Curves.easeInOut,
                  // color: Colors.orange,
                  child: SingleChildScrollView(
                    child: AnimatedOpacity(
                      curve: Curves.easeInOut,
                      duration: const Duration(milliseconds: 1500),
                      opacity: navBar ? 1.0 : 0.0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 20),
                          NavTextButton2(
                              label: 'HOME',
                              function: () {
                                toggleChoice();
                                Navigator.pushReplacementNamed(
                                    context, HomeScreenView.routeName);
                              }),
                          NavTextButton2(
                              label: 'PRODUCTS',
                              function: () {
                                toggleChoice();
                                Navigator.pushReplacementNamed(
                                    context, ProductScreen.routeName);
                              }),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 20,
                right: 10,
                child: IconButton(
                    icon: AnimatedIcon(
                      color: AppColors.touchColor,
                      icon: AnimatedIcons.menu_close,
                      progress: _animationController,
                    ),
                    onPressed: toggleChoice),
              ),
            ],
          ),
        ),
    ]);
  }
}
 // showMenu(
                              //     context: context,
                              //     position:
                              //         RelativeRect.fromLTRB(100, 10, 10, 80),
                              //     items: [
                              //       PopupMenuItem(
                              //         child: NavTextButton(
                              //             label: 'Home',
                              //             selected: false,
                              //             function: () {}),
                              //         onTap: () {},
                              //       ),
                              //       PopupMenuItem(
                              //         child: NavTextButton(
                              //             label: 'Facility',
                              //             selected: false,
                              //             function: () {}),
                              //         onTap: () {},
                              //       ),
                              //       PopupMenuItem(
                              //         child: NavTextButton(
                              //             label: 'Rooms',
                              //             selected: false,
                              //             function: () {}),
                              //         onTap: () {},
                              //       ),
                              //       PopupMenuItem(
                              //         child: NavTextButton(
                              //             label: 'Contact-us',
                              //             selected: false,
                              //             function: () {}),
                              //         onTap: () {},
                              //       ),
                              //     ]);