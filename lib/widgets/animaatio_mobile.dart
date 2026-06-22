import 'package:flutter/material.dart';
import 'package:kissa_agility_pisteet/constants/colors.dart';
import 'package:kissa_agility_pisteet/utils/animaatiot_utils.dart';
import 'package:flutter_3d_controller/flutter_3d_controller.dart';

class AnimaatioMobile extends StatefulWidget {
  final AnimaatiotUtils animaatio;

  const AnimaatioMobile({
    super.key,
    required this.animaatio,
  });

  @override
  State<AnimaatioMobile> createState() => _AnimaatioMobileState();
  
}

class _AnimaatioMobileState extends State<AnimaatioMobile> {
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
void didUpdateWidget(covariant AnimaatioMobile oldWidget) {
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
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    
    return Container(
                width: screenWidth,
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
              SizedBox(
                height: 350,
                width: screenWidth,
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

                
            
            const SizedBox(height: 30,),
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
                fontWeight: FontWeight.w600,
                color: CustomColor.whitePrimary,
              ),
    ),

          Padding(
            padding: const EdgeInsets.fromLTRB(0, 12, 12, 12),
            child: Text("Esteen suoritus",
              style: const TextStyle(
                fontSize: 14,
                color: CustomColor.whiteSecondary,
              ),
            ),
          ),
  Row(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    if (_currentEste.point2A != null)
          IconButton(
        constraints: const BoxConstraints(
          minWidth: 0,
          minHeight: 0,
        ),
        padding: EdgeInsets.zero,
        visualDensity: VisualDensity.compact,
        icon: const Icon(
          Icons.play_circle_fill,
          size: 14,
          color: CustomColor.yellowSecondary,
        ),
        onPressed: () {
          _changeAnimation(_currentEste.point2A!);
        },
    ),
    if (_currentEste.point2B != null)
          IconButton(
        constraints: const BoxConstraints(
          minWidth: 0,
          minHeight: 0,
        ),
        padding: EdgeInsets.zero,
        visualDensity: VisualDensity.compact,
        icon: const Icon(
          Icons.play_circle_fill,
          size: 14,
          color: CustomColor.yellowSecondary,
        ),
        onPressed: () {
          _changeAnimation(_currentEste.point2B!);
        },
    ),
    Padding(
      padding: const EdgeInsets.fromLTRB(0, 12, 12, 12),
      child: Text(
        _currentEste.subtitle2p,
      style: const TextStyle(
                fontSize: 12,
                color: CustomColor.whiteSecondary,
              ),
            ),
          ),
      ],
  ),
    Row(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
       if (_currentEste.point1A != null)
        IconButton(
        constraints: const BoxConstraints(
          minWidth: 0,
          minHeight: 0,
        ),
        padding: EdgeInsets.zero,
        visualDensity: VisualDensity.compact,
        icon: const Icon(
          Icons.play_circle_fill,
          size: 14,
          color: CustomColor.yellowSecondary,
        ),
        onPressed: () {
          _changeAnimation(_currentEste.point1A!);
        },
    ),
    if (_currentEste.point1B != null)
      IconButton(
        constraints: const BoxConstraints(
          minWidth: 0,
          minHeight: 0,
        ),
        padding: EdgeInsets.zero,
        visualDensity: VisualDensity.compact,
        icon: const Icon(
          Icons.play_circle_fill,
          size: 14,
          color: CustomColor.yellowSecondary,
        ),
        onPressed: () {
          _changeAnimation(_currentEste.point1B!);
        },
    ),
    Padding(
            padding: const EdgeInsets.fromLTRB(0, 12, 12, 12),
  
            child: Text(
      _currentEste.subtitle1p,
      style: const TextStyle(
                fontSize: 12,
                color: CustomColor.whiteSecondary,
              ),
            ),
          ),
    ],
  ),
      Row(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
   if (_currentEste.point0A != null)
          IconButton(
        constraints: const BoxConstraints(
          minWidth: 0,
          minHeight: 0,
        ),
        padding: EdgeInsets.zero,
        visualDensity: VisualDensity.compact,
        icon: const Icon(
          Icons.play_circle_fill,
          size: 14,
          color: CustomColor.yellowSecondary,
        ),
        onPressed: () {
            _changeAnimation(_currentEste.point0A!);
        },
    ),
    if (_currentEste.point0B != null)
            IconButton(
        constraints: const BoxConstraints(
          minWidth: 0,
          minHeight: 0,
        ),
        padding: EdgeInsets.zero,
        visualDensity: VisualDensity.compact,
        icon: const Icon(
          Icons.play_circle_fill,
          size: 14,
          color: CustomColor.yellowSecondary,
        ),
        onPressed: () {
            _changeAnimation(_currentEste.point0B!);
        },
    ),
    Padding(
            padding: const EdgeInsets.fromLTRB(0, 12, 12, 12),
            child: Text(
      _currentEste.subtitle0p,
      style: const TextStyle(
                fontSize: 12,
                color: CustomColor.whiteSecondary,
              ),
            ),
          ),

    const SizedBox(height: 16),
                    const SizedBox(height: 15,),
                    
                  ],
                ),
                    ],
              ),
              );
  }
}