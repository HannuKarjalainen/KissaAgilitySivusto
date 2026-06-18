import 'package:flutter/material.dart';
import 'package:kissa_agility_pisteet/constants/colors.dart';
import 'package:kissa_agility_pisteet/utils/animaatiot_utils.dart';
import 'package:kissa_agility_pisteet/widgets/animaatio_desktop.dart';
import 'package:kissa_agility_pisteet/widgets/animaatio_mobile.dart';
import 'package:kissa_agility_pisteet/widgets/header_desktop.dart';
import 'package:kissa_agility_pisteet/widgets/header_mobile.dart';
import 'package:kissa_agility_pisteet/widgets/main_desktop.dart';
import 'package:kissa_agility_pisteet/widgets/main_mobile.dart';
import 'package:kissa_agility_pisteet/widgets/animaatio_desktop.dart';
import 'package:kissa_agility_pisteet/widgets/animaatio_mobile.dart';
import 'package:kissa_agility_pisteet/widgets/este_section.dart';
import 'package:kissa_agility_pisteet/constants/size.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;

  return LayoutBuilder(
      builder: (context,constraints) {
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColor.scaffoldBg,
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children:[
                //Main
                if(constraints.maxWidth>=kMinDesktopWidth)

                HeaderDesktop() else
                HeaderMobile(),
            
                /* Main piiloon, testin ajaksi
                if(constraints.maxWidth>=kMinDesktopWidth+200)
                  MainDesktop()
                else
                  const MainMobile(),
                */ 
                // Estekortti mainin tilalle ennen sivun tekoa
                if(constraints.maxWidth>=kMinDesktopWidth+200)
                  AnimaatioDesktop(
                    animaatio: animaatiotUtils1[2],
                  )
                else
                  AnimaatioMobile(
                    animaatio: animaatiotUtils1[4],
                  ),
                //ESTEET
                const SizedBox(height: 30), 
                 
                EsteSection(),
                const SizedBox(height: 30),
                //Contact

                //Footer
                //Footer(),
              ],
            ),
          ),
        );
      }
    ); 
  }
}