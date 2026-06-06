import 'package:flutter/material.dart';
import 'package:kissa_agility_pisteet/constants/colors.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key});
  @override
  Widget build(BuildContext context) {
    return  Container(
            height: 60,
            width: double.maxFinite,
            color: CustomColor.whitePrimary,
          );
  }
}