import 'package:flutter/material.dart';
import 'package:kissa_agility_pisteet/constants/colors.dart';
import 'package:flutter_3d_controller/flutter_3d_controller.dart';

class AnimaatioDesktop extends StatefulWidget {
  const AnimaatioDesktop({super.key});

  @override
  State<AnimaatioDesktop> createState() => _AnimaatioDesktopState();
  
}

class _AnimaatioDesktopState extends State<AnimaatioDesktop> {
  final Flutter3DController _controller = Flutter3DController();

  bool _modelLoaded = false;
  bool _isPlaying = false;

  String _currentAnimation =
      'assets/esteet/Putkieste3D.glb';

  void _changeAnimation(String path) {
    setState(() {
      _currentAnimation = path;
    });
  }

  @override
  void initState() {
    super.initState();

    _controller.onModelLoaded.addListener(() {
      if (_controller.onModelLoaded.value) {
        setState(() {
          _modelLoaded = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: screenHeight / 1.2,
      constraints: const BoxConstraints(
        minHeight: 550,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    const Text(
      "Putkieste",
      style: TextStyle(
        fontSize: 40,
        height: 3,
        fontWeight: FontWeight.bold,
        color: CustomColor.whitePrimary,
      ),
    ),

    const Text(
      "Esteen suoritus",
      style: TextStyle(
        fontSize: 30,
        color: CustomColor.whitePrimary,
      ),
    ),
  Row(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    IconButton(
        icon: const Icon(
          Icons.play_circle_fill,
          color: CustomColor.yellowSecondary,
        ),
        onPressed: () {
          _changeAnimation(
            'assets/Animaatiot/KissaJuokseePutkenläpi.glb',
          );
        },
    ),
    Text(
      'Kissa suorittaa esteen menemällä putken läpi. 2 p',
      style: TextStyle(
        fontSize: 24,
        height: 1.5,
        color: CustomColor.whitePrimary,
      ),           
    ),
      ],
  ),
    Row(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    IconButton(
        icon: const Icon(
          Icons.play_circle_fill,
          color: CustomColor.yellowSecondary,
        ),
        onPressed: () {
          _changeAnimation(
            'assets/Animaatiot/KissaJuokseePutkenläpi.glb',
          );
        },
    ),
    Text(
      'Kissa menee putken puoleen väliin, mutta palaa takaisin. 1 p',
      style: TextStyle(
        fontSize: 24,
        height: 1.5,
        color: CustomColor.whitePrimary,
      ),           
    ),
      ],
  ),
      Row(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    IconButton(
        icon: const Icon(
          Icons.play_circle_fill,
          color: CustomColor.yellowSecondary,
        ),
        onPressed: () {
          _changeAnimation(
            'assets/Animaatiot/KissaJuokseePutkenOHI.glb',
          );
        },
    ),
      IconButton(
        icon: const Icon(
          Icons.play_circle_fill,
          color: CustomColor.yellowSecondary,
        ),
        onPressed: () {
          _changeAnimation(
            'assets/Animaatiot/KissaHyppääPutkenYli.glb',
          );
        },
    ),
    Text(
      'Kissa kiertää esteen tai hyppää sen yli. 0 p',
      style: TextStyle(
        fontSize: 24,
        height: 1.5,
        color: CustomColor.whitePrimary,
      ),           
    ),
      ],
  ),
    const SizedBox(height: 16),

  ],
),

          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 550,
                width: 550,
                child: Flutter3DViewer(
                  controller: _controller,
                  src: _currentAnimation,
                ),
              ),

              const SizedBox(height: 16),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: _modelLoaded
                    ? () {
                      _controller.playAnimation();

                      setState(() {
                        _isPlaying = true;
                      });
                    }
                    : null,
                    icon: const Icon(Icons.play_arrow),
                  ),

                  IconButton(
                    onPressed: _modelLoaded
                    ? () {
                      _controller.pauseAnimation();

                      setState(() {
                        _isPlaying = false;
                      });
                    }
                    : null,
                    icon: const Icon(Icons.pause),
                  ),

                  IconButton(
                    onPressed: _modelLoaded
                    ? () {
                      _controller.resetAnimation();

                      setState(() {
                        _isPlaying = true;
                      });
                    }
                    : null,
                    icon: const Icon(Icons.replay),
                  ),

                  IconButton(
                    onPressed: _modelLoaded
                    ? () {
                      _controller.stopAnimation();

                      setState(() {
                        _isPlaying = false;
                      });
                    }
                    : null,
                    icon: const Icon(Icons.stop),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}