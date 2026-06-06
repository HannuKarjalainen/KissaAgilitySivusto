import 'package:flutter/material.dart';
import 'package:kissa_agility_pisteet/constants/colors.dart';
import 'package:kissa_agility_pisteet/utils/esteet_utils.dart';
import 'package:kissa_agility_pisteet/widgets/este_card.dart';

class EsteSection extends StatelessWidget {
  const EsteSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth=MediaQuery.of(context).size.width;
    return Container(
                width: screenWidth,
                padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                child: Column(
                  children: [
                    
                    const Text("Esteet",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: CustomColor.whitePrimary,
                      ),
                    ),
                    const SizedBox(height: 50),
                    ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: 1600),
                      child: Wrap(
                        spacing: 25,
                        runSpacing: 25,
                        children: [
                          for(int i=0; i < esteetUtils1.length; i++)
                          EsteCardWidget(esteet: esteetUtils1[i],),
                        ],
                      ),
                    ),
                  ],
                ),
              );
  }
}