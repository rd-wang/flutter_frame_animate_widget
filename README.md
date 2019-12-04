# frame_animation_widget

flutter 实现帧动画
## Getting Started

This project is a starting point for a Flutter application.

### how to use

#### 渲染widget后直接播放

  ````
  //list  图片帧集合，
  //interval 切帧时间，
  FrameAnimationImage(list, width: 220, height: 200, interval: 50)

  ````
#### 渲染widget后手动控制播放
  ````
  //由GlobalKey跨widget改变状态
  final GlobalKey<FrameAnimationImageState> _key = new GlobalKey<FrameAnimationImageState>();

  //start: false 此时要告诉widget 开始不播放动画
  FrameAnimationImage(_key, list,
                width: 220, height: 200, interval: 50, start: false)

  //控制 widget 开始/继续;结束;重新开始  播放帧
  _key.currentState.startAnimation();
  _key.currentState.stopAnimation();
  _key.currentState.reStartAnimation();

  ````

For help getting started with Flutter, view our
[online documentation](https://github.com/rd-wang/flutter_frame_animate_widget), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
