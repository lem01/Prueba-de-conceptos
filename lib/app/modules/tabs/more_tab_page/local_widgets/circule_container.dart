import 'package:flutter/material.dart';

class CirculeContainer extends StatelessWidget {
  final estilo = TextStyle(fontSize: 40, color: Colors.black);

  final Widget child;
  final double size;

  CirculeContainer({
    required this.child,
    required this.size,
  }) : assert(size >= 50);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: child,
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: Color(0xfff0f0f0),
        shape: BoxShape.circle,
        //borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
              color: Colors.black26, blurRadius: 10, offset: Offset(5, 5)),
        ],
      ),
    );
  }
}
