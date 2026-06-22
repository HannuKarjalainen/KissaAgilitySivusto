import 'package:flutter/material.dart';
import 'package:kissa_agility_pisteet/constants/colors.dart';
import 'package:kissa_agility_pisteet/utils/animaatiot_utils.dart';
import 'package:flutter_3d_controller/flutter_3d_controller.dart';

class AnimaatioDesktop extends StatefulWidget {
  final AnimaatiotUtils animaatio;

  const AnimaatioDesktop({
    super.key,
    required this.animaatio,
  });

  @override
  State<AnimaatioDesktop> createState() => _AnimaatioDesktopState();
}

class _AnimaatioDesktopState extends State<AnimaatioDesktop> {
  final Flutter3DController _controller = Flutter3DController();

  bool _modelLoaded = false;
  bool _isPlaying = false;
  bool _isAvoinLuokka = false;

  late AnimaatiotUtils _currentEste;

  late String _currentAnimation;

  void _changeAnimation(String path) {
    setState(() {
      _currentAnimation = path;
    });
  }

  @override
void didUpdateWidget(covariant AnimaatioDesktop oldWidget) {
  super.didUpdateWidget(oldWidget);

  if (oldWidget.animaatio.image != widget.animaatio.image) {
    setState(() {
      _currentEste = widget.animaatio;
      _currentAnimation = widget.animaatio.image;
      _modelLoaded = true;
    });
  }
}

@override
void initState() {
  super.initState();

  _currentEste = widget.animaatio;
  _currentAnimation = _currentEste.image;

  _controller.onModelLoaded.addListener(() {
    if (_controller.onModelLoaded.value) {
      setState(() {
        _modelLoaded = true;
      });
    }
  });
}

void _toggleLuokka() {
  final index = animaatiotUtils1.indexWhere(
    (e) => e.title.split(' ').first ==
           _currentEste.title.split(' ').first,
  );

  if (index == -1) return;

  setState(() {
    _isAvoinLuokka = !_isAvoinLuokka;

    _currentEste =
        _isAvoinLuokka
            ? animaatiotUtils2[index]
            : animaatiotUtils1[index];

    _currentAnimation = _currentEste.image;
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
    if (_currentEste.luokka != null)
  Row(
    children: [
      const Text(
        "Alokas",
        style: TextStyle(
          color: CustomColor.whitePrimary,
        ),
      ),

      Switch(
        value: _isAvoinLuokka,
        onChanged: (_) => _toggleLuokka(),
      ),

      const Text(
        "Avoin",
        style: TextStyle(
          color: CustomColor.whitePrimary,
        ),
      ),
    ],
  ),
    Text(
      _currentEste.title,
      style: const TextStyle(
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
    if (_currentEste.point2A != null)
    IconButton(
        icon: const Icon(
          Icons.play_circle_fill,
          color: CustomColor.yellowSecondary,
        ),
        onPressed: () {
          _changeAnimation(_currentEste.point2A!);
        },
    ),
    if (_currentEste.point2B != null)
    IconButton(
        icon: const Icon(
          Icons.play_circle_fill,
          color: CustomColor.yellowSecondary,
        ),
        onPressed: () {
          _changeAnimation(_currentEste.point2B!);
        },
    ),
    Text(
      _currentEste.subtitle2p,
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
    if (_currentEste.point1A != null)
    IconButton(
        icon: const Icon(
          Icons.play_circle_fill,
          color: CustomColor.yellowSecondary,
        ),
        onPressed: () {
          _changeAnimation(_currentEste.point1A!);
        },
    ),
    if (_currentEste.point1B != null)
    IconButton(
        icon: const Icon(
          Icons.play_circle_fill,
          color: CustomColor.yellowSecondary,
        ),
        onPressed: () {
          _changeAnimation(_currentEste.point1B!);
        },
    ),
    Text(
      _currentEste.subtitle1p,
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
    if (_currentEste.point0A != null)
    IconButton(
        icon: const Icon(
          Icons.play_circle_fill,
          color: CustomColor.yellowSecondary,
        ),
        onPressed: () {
            _changeAnimation(_currentEste.point0A!);
        },
    ),
    if (_currentEste.point0B != null)
      IconButton(
        icon: const Icon(
          Icons.play_circle_fill,
          color: CustomColor.yellowSecondary,
        ),
        onPressed: () {
            _changeAnimation(_currentEste.point0B!);
        },
    ),
    if (_currentEste.point0C != null)
      IconButton(
        icon: const Icon(
          Icons.play_circle_fill,
          color: CustomColor.yellowSecondary,
        ),
        onPressed: () {
            _changeAnimation(_currentEste.point0C!);
        },
    ),
    if (_currentEste.point0C != null)
      IconButton(
        icon: const Icon(
          Icons.play_circle_fill,
          color: CustomColor.yellowSecondary,
        ),
        onPressed: () {
            _changeAnimation(_currentEste.point0D!);
        },
    ),
    Text(
      _currentEste.subtitle0p,
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