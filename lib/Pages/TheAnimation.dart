// import 'dart:async';
import "package:flutter/material.dart";
import 'package:flutter_app/Pages/Pacer.dart';

class TheAnimation extends StatefulWidget {
  @override
  _TheAnimationState createState() => _TheAnimationState();
}

class _TheAnimationState extends State<TheAnimation>  with SingleTickerProviderStateMixin {
  Animation<double> _animation;
  AnimationController animationController;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(vsync: this, duration: Duration(milliseconds: 5000));
    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(animationController);
    
    _animation.addListener(() {
      // setState(() {
      // print(_animation.value.toString()+ " is animation value");
      //   //
      // });
    });

    _animation.addStatusListener((status) {
      // print("$status  is the status ");
      if(status ==  AnimationStatus.completed){
        animationController.reverse();
      }
      else if(status == AnimationStatus.dismissed){
        animationController.forward();
      }
    });

    animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Pacer("Animation Section"),
        Container(
          height: 500.0,
          child: Center(
            child:  AnimatedLogo( animation: _animation,),  //Text("jhdsjhjdhs")
          ),
        ),
      ],
    );
  }
}

class AnimatedLogo extends AnimatedWidget{
  final Tween<double> _sizeAnimation = Tween(begin: 0.0, end:20.0);
  AnimatedLogo({Key key, Animation animation}):super(key: key, listenable: animation);

  @override
  Widget build(BuildContext context) {
    final Animation<double> animation = listenable;
    // print(_sizeAnimation.evaluate(animation));
     return  Transform.scale(
       scale: _sizeAnimation.evaluate(animation),
       child: FlutterLogo(),
     );
  }
}

/// Animation sample one for the interpolation type

class AnimateOne extends StatefulWidget{
  @override
  _AnimateOne createState() {
    return _AnimateOne();
  }
}

class _AnimateOne extends State with TickerProviderStateMixin{
   AnimationController _controller;
  Animation<double> _animation;
  @override
  void initState() {
    super.initState();
        print("Hello");
        // var a = 0;
    _controller = AnimationController(vsync: this, duration: Duration(seconds: 2));
    _animation = Tween<double>(begin: 0, end: 300).animate(_controller)
    ..addListener(() {
      // print(_animation.value);
      setState(() {
        //
      });
    })
    ..addStatusListener((status) {
      // print(status);
      if(status == AnimationStatus.completed)  _controller.reverse();
      if(status == AnimationStatus.dismissed) _controller.forward();

    });
    _controller.forward();
    // Timer.periodic( Duration(seconds: 2 ), (timer){
    //   if(a > 5) timer.cancel();
    //   print(_animation.value);
    //   a++;
    // });
  }

  @override
  Widget build(BuildContext context) {
    // print(Tween(begin: 0.0, end:1.0).evaluate(_animation));
    return Center(
      child: Container(
        height: _animation.value,
        width: _animation.value,
        child: FlutterLogo(),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}

/// Animation with AnimationWidget Sample
class AnimationWidgetType extends StatefulWidget {
  @override
  _AnimationWidgetTypeState createState() => _AnimationWidgetTypeState();
}

class _AnimationWidgetTypeState extends State<AnimationWidgetType> with TickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation;
  @override
  void initState() {
    super.initState();
    // var a = 0;
    _controller = AnimationController(vsync: this, duration: Duration(seconds: 2));
    _animation = Tween<double>(begin: 0, end: 300).animate(_controller)
      ..addListener(() {
        // print(_animation.value);
        setState(() {
          //
        });
      })
      ..addStatusListener((status) {
        // print(status);
        if(status == AnimationStatus.completed)  _controller.reverse();
        if(status == AnimationStatus.dismissed) _controller.forward();

      });
    _controller.forward();
    // Timer.periodic( Duration(seconds: 2 ), (timer){
    //   if(a > 5) timer.cancel();
    //   print(_animation.value);
    //   a++;
    // });
  }

  @override
  Widget build(BuildContext context) {
    return CustomAnimatedWidget(animation: _animation);
  }
}

class CustomAnimatedWidget extends AnimatedWidget{

  CustomAnimatedWidget({Key key, Animation<double> animation}): super(key: key, listenable: animation);
  @override
  Widget build(BuildContext context) {
    final animation = listenable as Animation<double>;
    return Center(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        height: animation.value,
        width: animation.value,
        child: const FlutterLogo(),
      ),
    );
  }
}

/// The child for builder type animation using AnimationBuilder  Widget
class BuilderLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      child: FlutterLogo(),
    );
  }
}

class GrowTransition extends StatelessWidget{

  GrowTransition({Key key, this.child,  this.animation}): super(key: key);
  final Widget child;
  final Animation<double> animation;


  @override
  Widget build(BuildContext context) {
    print(animation.value);
    return Center(
      child: AnimatedBuilder(
        animation: animation,
        builder: (context, child){
          return SizedBox(
            child: child,
            height: animation.value,
            width: animation.value,
          );
        },
        child: child,
      )
    );
  }
}

/// Stateful widget rendering the AnimatedBuilder and has no listener
class AnimatedBuilderType extends StatefulWidget{
  @override
  _AnimatedBuilderTypeState createState() => _AnimatedBuilderTypeState();
}

class _AnimatedBuilderTypeState extends State<AnimatedBuilderType> with TickerProviderStateMixin {
  Animation<double> _animation;
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(seconds: 2));
    _animation = Tween<double>(begin: 0.0, end:300.0).animate(_controller);
    _controller.repeat(reverse: true);

    // _controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // return BuilderLogo();
    return GrowTransition(
      child: BuilderLogo(),
      animation: _animation,
    );
  }
}


class AnimatedSizeAndOpacity extends AnimatedWidget{
  static final Tween<double> opacity = Tween<double>(begin: 0.0, end: 1.0);
  static final Tween<double> size = Tween<double>(begin: 0.0, end: 300.0);

  AnimatedSizeAndOpacity({Key key, Animation<double> animation}) : super(key: key, listenable: animation);

  @override
  Widget build(BuildContext context) {
    final animation = listenable as Animation<double>;
    return Center(
      child: Opacity(
        opacity: opacity.evaluate(animation),
        child: Container(
          margin: EdgeInsets.symmetric(vertical:10),
          height: size.evaluate(animation),
          width: size.evaluate(animation),
          child: FlutterLogo(),
        ),
      ),

    );
  }
}

/// Size and Opacity Example

class SizeAndOpacity extends StatefulWidget {
  @override
  _SizeAndOpacityState createState() => _SizeAndOpacityState();
}

class _SizeAndOpacityState extends State<SizeAndOpacity> with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this, duration:  Duration( seconds: 2));
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);
    controller.repeat(reverse: true);
  }

  @override
  dispose(){
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print(animation.value);
    return AnimatedSizeAndOpacity(animation: animation);
  }
}





class AnimationSamples extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Pacer("The mighty Animations"),
        Pacer(""),
        Pacer("Javat Animation Example"),
        TheAnimation(),
        Pacer("Official Animation with simple value interpolation"),
        AnimateOne(),
        Pacer(""),
        Pacer("Usage with AnimationWidget"),
        AnimationWidgetType(),
        Pacer(""),
        Pacer("AnimatedBuilder Type"),
        AnimatedBuilderType(),
        Pacer(""),
        Pacer("Size and Opacity Example"),
        SizeAndOpacity(),
        Pacer(""),


      ],
    );
  }
}