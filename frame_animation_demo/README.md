# frame_animate_widget
flutter  帧动画 widget 

### how to use


#### 渲染widget后直接播放

  ````
  //list  图片帧集合，
  //interval 切帧时间，
  FrameAnimationImage(list, width: 220, height: 200, interval: 50)

  ````
#### 渲染widget后手动控制播放
  ````
  final GlobalKey<FrameAnimationImageState> _key = new GlobalKey<FrameAnimationImageState>();
  
  //start: false 此时要告诉widget 开始不播放动画
  FrameAnimationImage(_key, list,
                width: 220, height: 200, interval: 50, start: false)
                
  //控制 widget 开始/继续;结束;重新开始;重置状态          
  _key.currentState.start();
  _key.currentState.stop();
  _key.currentState.reStart();
  _key.currentState.reset();
  
  ````
