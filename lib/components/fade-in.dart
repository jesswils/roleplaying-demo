// import 'package:flutter/material.dart';
//
// class Fade extends StatefulWidget {
//   @override
//   State<Fade> createState() => _FadeState();
// }
//
// class _FadeState extends State<Fade> with TickerProviderStateMixin {
//   late final AnimationController _controller = AnimationController(
//     duration: const Duration(seconds: 2),
//     vsync: this,
//   )..repeat(reverse: true);
//   late final Animation<double> _animation = CurvedAnimation(
//     parent: _controller,
//     curve: Curves.easeIn,
//   );
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.white,
//       child: FadeTransition(
//         opacity: _animation,
//         child:
//             const Padding(padding: EdgeInsets.all(8), child: animatedTexts()),
//       ),
//     );
//   }
// }
