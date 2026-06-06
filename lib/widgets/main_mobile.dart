import 'package:flutter/material.dart';
import 'package:kissa_agility_pisteet/constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    
    return Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 40.0, 
                  vertical: 30.0,
                ),
                height: screenHeight,
                constraints: BoxConstraints(
                  minHeight: 560.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ShaderMask(
                      shaderCallback: (bounds) {
                        return LinearGradient(colors: [
                          CustomColor.scaffoldBg.withAlpha((0.6 * 255).toInt()),
                          CustomColor.scaffoldBg.withAlpha((0.6 * 255).toInt()),
                        ]).createShader(bounds);
                      },
                      blendMode: BlendMode.srcATop,
                      child: Image.asset(
                        "assets/logo_agilitykissat_white-1.png",
                        width: screenWidth,
                      ),
                    ),
                    const SizedBox(height: 30,),
                    const Text(
                      "Virallisten kisaesteiden suoritusohjeet\nja suoritustavoista saatavat pisteet.\n\nValitse esteen alta suorituksesta saatava pistemäärä nähdäksesi animaation esimerkkisuorituksesta\n",
                        style: TextStyle(
                        fontSize: 24.0,
                        height: 1.5,
                        fontWeight: FontWeight.bold,
                        color: CustomColor.whitePrimary,  
                      ),
                    ),
                    const SizedBox(height: 15,),
                    
                  ],
                ),
              );
  }
}