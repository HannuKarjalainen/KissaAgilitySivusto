import 'package:flutter/material.dart';
import 'package:kissa_agility_pisteet/constants/colors.dart';
import 'package:kissa_agility_pisteet/utils/esteet_utils.dart';
import 'package:flutter_3d_controller/flutter_3d_controller.dart';

class EsteCardWidget extends StatefulWidget {
  final EsteetUtils esteet;

  const EsteCardWidget({
    super.key,
    required this.esteet,
  });

  @override
  _EsteCardWidgetState createState() => _EsteCardWidgetState();
}

class _EsteCardWidgetState extends State<EsteCardWidget> {


  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 550,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: CustomColor.bgLight2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
            Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
        child: widget.esteet.image2 != null
          ? Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 140,
                width: 125,
                child: Flutter3DViewer(
                  src: widget.esteet.image,
                ),
              ),
              const SizedBox(width: 16),
              SizedBox(
                height: 140,
                width: 125,
                child: Flutter3DViewer(
                  src: widget.esteet.image2!,
                ),
              ),
          ],
        )
      : Center(
          child: SizedBox(
            height: 140,
            width: 125,
            child: Flutter3DViewer(
              src: widget.esteet.image,
            ),
          ),
        ),
),
            
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 15, 12, 12),
            child: Text(
              widget.esteet.title,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: CustomColor.whitePrimary,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
            child: Text(
              widget.esteet.subtitle,
              style: const TextStyle(
                fontSize: 12,
                color: CustomColor.whiteSecondary,
              ),
            ),
          ),
          const Spacer(),
                    Container(
            color: CustomColor.bgLight1,
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 10,
            ),
            child: Row(
              children: [
                const Text(
                  "Tänne animaation valinta?:",
                  style: TextStyle(
                    color: CustomColor.yellowSecondary,
                    fontSize: 10,
                  ),
                ),
                const Spacer(),
              ],  
            ),
          ),
        ],
      ),
    );
  }
}
