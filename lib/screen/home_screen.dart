import 'package:flutter/material.dart';
import 'package:tech_tronex/widgets/app_footer.dart';

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(padding:EdgeInsets.symmetric() ,
          child: Column(
        children: [

          AppFooter()
        ],
      )),
    );
  }
}
