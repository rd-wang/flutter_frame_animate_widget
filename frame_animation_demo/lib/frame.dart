import 'package:flutter/material.dart';
import 'package:frame_animate_widget/frame_animate_widget.dart';

class Frame extends StatelessWidget {

  bool b = false;
  final List<String> list = [
    'images/shiyin1_004.png',
    'images/shiyin1_005.png',
    'images/shiyin1_005.png',
    'images/shiyin1_006.png',
    'images/shiyin1_007.png',
    'images/shiyin1_008.png',
    'images/shiyin1_009.png',
    'images/shiyin1_010.png',
    'images/shiyin1_011.png',
    'images/shiyin1_012.png',
    'images/shiyin1_013.png',
    'images/shiyin1_014.png',
    'images/shiyin1_015.png',
    'images/shiyin1_016.png',
    'images/shiyin1_017.png',
    'images/shiyin1_018.png',
    'images/shiyin1_019.png'
  ];

  final GlobalKey<FrameAnimationImageState> _key = new GlobalKey<FrameAnimationImageState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('互动环节'),
          centerTitle: true,
        ),
        body: Center(
          child: GestureDetector(
            onTap: () {
              if (b) {
                _key.currentState.reStartAnimation();
              } else {
                _key.currentState.startAnimation();
              }
              b = !b;
            },
            child: FrameAnimationImage(_key, list,
                width: 220, height: 200, interval: 50, start: false),
          ),
        ));
  }
}
