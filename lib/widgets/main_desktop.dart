import 'package:flutter/material.dart';
import 'package:kissa_agility_pisteet/constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    
    return Container(
                margin: const EdgeInsets.symmetric(horizontal: 20.0),
                height: screenHeight/1.2,
                constraints: BoxConstraints(
                  minHeight: 350,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Virallisten kisaesteiden suoritusohjeet\nja suoritustavoista saatavat pisteet.\n\nValitse esteen alta suorituksesta saatava pistemäärä\nnähdäksesi animaation esimerkkisuorituksesta\n",
                          style: TextStyle(
                            fontSize: 30.0,
                            height: 1.5,
                            fontWeight: FontWeight.bold,
                            color: CustomColor.whitePrimary,  
                          ),
                        ),
                        const SizedBox(height: 15,),
                      ],
                    ),  
                    Image.asset(
                      "assets/logo_agilitykissat_white-1.png",
                      width: screenWidth/2,
                    ),
                  ],
                ),
              );
  }
}