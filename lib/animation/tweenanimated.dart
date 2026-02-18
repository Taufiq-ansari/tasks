// import 'package:flutter/material.dart';

// class TweenScreen extends StatefulWidget {
//   const TweenScreen({super.key});

//   @override
//   State<TweenScreen> createState() => _TweenScreenState();
// }

// class _TweenScreenState extends State<TweenScreen>
//     with SingleTickerProviderStateMixin {
//   late Animation _animate;
//   late AnimationController _animatedController;

//   @override
//   initState() {
//     super.initState();

//     _animatedController = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 5000),
//     );

//     _animate = CurvedAnimation(
//       parent: _animatedController,
//       curve: Curves.easeOut,
//       reverseCurve: Curves.easeIn,
//     );

//     animationOperation();
//     // _animate = Tween(begin: 0.0, end: 200).animate(_animatedController);

//     // var curveAnimation = TweenSequence(
//     //   [
//     //     TweenSequenceItem(
//     //       tween: Tween(begin: 0.0, end: 1.0)
//     //           .chain(CurveTween(curve: Curves.easeOut)),
//     //       weight: 40,
//     //     ),
//     //     TweenSequenceItem(
//     //       tween: ConstantTween(1.0),
//     //       weight: 20,
//     //     ),
//     //     TweenSequenceItem(
//     //       tween: Tween(begin: 1.0, end: 0.0)
//     //           .chain(CurveTween(curve: Curves.easeIn)),
//     //       weight: 40,
//     //     ),
//     //   ],
//     // ).animate(_animatedController);

//     // _animate = curveAnimation;

//     // print(curveAnimation);

//     // _animatedController.repeat();
//   }

//   animationOperation() async {
//     while (mounted) {
//       await _animatedController.forward();
//       // _animatedController.stop();
//       await Future.delayed(Duration(milliseconds: 5000));

//       await _animatedController.reverse();
//     }
//   }

//   @override
//   void dispose() {
//     _animatedController.dispose();
//     super.dispose();
//   }

//   Widget buildCircle(double delay, double maxSize) {
//     return AnimatedBuilder(
//       animation: _animate,
//       builder: (context, child) {
//         final value = (_animatedController.value + delay) % 1;

//         final size = maxSize * value;

//         return Container(
//           height: size,
//           width: size,
//           decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             color: Colors.indigo.withOpacity(1 - value),
//           ),
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     const double maxSize = 400;
//     return Scaffold(
//       body: Center(
//         child: Stack(
//           alignment: Alignment.center,
//           children: [
//             buildCircle(0.0, maxSize),
//             buildCircle(0.2, maxSize),
//             buildCircle(0.4, maxSize),
//             buildCircle(0.6, maxSize),
//             buildCircle(0.8, maxSize),
//             buildCircle(0.10, maxSize),
//             Container(
//               width: 50,
//               height: 50,
//               decoration:
//                   BoxDecoration(shape: BoxShape.circle, color: Colors.indigo),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF111111),
        body: Center(
          child: ConcentricPulse(),
        ),
      ),
    );
  }
}

class ConcentricPulse extends StatefulWidget {
  const ConcentricPulse({super.key});

  @override
  State<ConcentricPulse> createState() => _ConcentricPulseState();
}

class _ConcentricPulseState extends State<ConcentricPulse>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 3000),
    )..repeat();

    _scaleAnimation = TweenSequence<double>([
      // Stage 1: Default hold
      TweenSequenceItem(
        tween: Tween(begin: 1.0, end: 1.0),
        weight: 20,
      ),

      // Stage 2: Ease-out expand
      TweenSequenceItem(
        tween: Tween(begin: 1.0, end: 1.4)
            .chain(CurveTween(curve: Curves.easeOut)),
        weight: 25,
      ),

      // Stage 3: Shrink smaller
      TweenSequenceItem(
        tween: Tween(begin: 1.4, end: 0.75),
        weight: 25,
      ),

      // Stage 4: Return to default
      TweenSequenceItem(
        tween: Tween(begin: 0.75, end: 1.0)
            .chain(CurveTween(curve: Curves.easeInOut)),
        weight: 30,
      ),
    ]).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget buildCircle(double size, double delay) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final double progress = (_controller.value - delay).clamp(0.0, 1.0);

        final double scale = TweenSequence<double>([
          TweenSequenceItem(
            tween: Tween(begin: 1.0, end: 1.0),
            weight: 20,
          ),
          TweenSequenceItem(
            tween: Tween(begin: 1.0, end: 1.4)
                .chain(CurveTween(curve: Curves.easeOut)),
            weight: 25,
          ),
          TweenSequenceItem(
            tween: Tween(begin: 1.4, end: 0.75),
            weight: 25,
          ),
          TweenSequenceItem(
            tween: Tween(begin: 0.75, end: 1.0)
                .chain(CurveTween(curve: Curves.easeInOut)),
            weight: 30,
          ),
        ]).transform(progress);

        return Transform.scale(
          scale: scale,
          child: Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.blueAccent,
                width: 3,
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        buildCircle(160, 0.0),
        buildCircle(130, 0.1),
        buildCircle(100, 0.2),
        buildCircle(70, 0.3),
      ],
    );
  }
}
