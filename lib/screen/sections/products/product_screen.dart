import 'package:flutter/material.dart';
import 'package:tech_tronex/helper/app_text.dart';
import 'package:tech_tronex/screen/screen_widgets/app_footer.dart';
import 'package:tech_tronex/screen/screen_widgets/app_header.dart';
import 'package:tech_tronex/screen/sections/products/widgets/product_card.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});
  static const routeName = '/productscreen';

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: media.width,
            child: const SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 100),
                  Center(
                    child: HeroTitleText(
                      text: 'PRODUCTS',
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                  SizedBox(height: 30),
                  Column(
                    children: [
                      ProductCard(
                        image: 'asset/ehouse.jpg',
                        title: 'litehub mini 720 Detachable',
                        title2: 'Ports',
                        description1:
                            'Battery capacity : 720WH\nBattery type : lifepo4( lithium ion phosphate)\nBattery format : Detachable\nManagement system: short circuit protection, overload protection,over voltage protection, temperature regulated, Bms',
                        description2:
                            '2 Ac output : 220-240v\n2 USB A output : 5v 2A\n1 usb type c output : 20watts\nInput ac voltage  : 220v\nSolar input : 350watts\nPure sine wave output : 50Hz\nBuilt in charging system : 20A LCD display ',
                      ),
                      ProductCard(
                        image: 'asset/ehouse.jpg',
                        title: 'LiteHub mini 720 off grid',
                        title2: 'Ports',
                        description1:
                            'Battery capacity : 720WH\nBattery type : lifepo4( lithium ion phosphate)\nBattery format : Detachable\nManagement system: short circuit protection, overload protection,over voltage protection, temperature regulated, Bms',
                        description2:
                            '2 Ac output : 220-240v\n2 USB A output : 5v 2A\n1 usb type c output : 20watts\nSolar input : 350watts\nPure sine wave output : 50Hz\nBuilt in charging system : 20A\nDisplay: LCD',
                      ),
                      ProductCard(
                        image: 'asset/ehouse.jpg',
                        title: 'LiteHub mini 360 off grid',
                        title2: 'Ports',
                        description1:
                            'Battery capacity : 360WH\nBattery type : lifepo4( lithium ion phosphate)\nBattery format : Detachable\nManagement system: short circuit protection, overload protection,over voltage protection, temperature regulated, Bms',
                        description2:
                            '1 Ac output : 220-240v\n1 USB A output : 5v 2A\n1 usb type c output : 20watts\nSolar input : 200watts\nPure sine wave output : 50Hz\nBuilt in charging system : 7A\nDisplay : LED',
                      ),
                      ProductCard(
                        image: 'asset/ehouse.jpg',
                        title: 'LiteHub mini 360',
                        title2: 'Ports',
                        description1:
                            'Battery capacity : 360WH\nBattery type : lifepo4( lithium ion phosphate)\nBattery format : Detachable\nManagement system: short circuit protection, overload protection,over voltage protection, temperature regulated, Bms',
                        description2:
                            '1 Ac output : 220-240v\n1 USB A output : 5v 2A\n1 usb type c output : 20watts\nInput ac voltage  : 220v\nSolar input : 200watts\nPure sine wave output : 50Hz\nBuilt in charging system : 7A\nDisplay : LED',
                      ),
                    ],
                  ),
                  AppFooter(),
                ],
              ),
            ),
          ),
          Container(
              width: media.width,
              color:   Colors.white,
              child: const ScreenAppBar()),
        ],
      ),
    );
  }
}
