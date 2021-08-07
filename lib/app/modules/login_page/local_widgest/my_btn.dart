import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyBtn extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color bacgroundColor, texColor;
  final bool fullwidth;
  final EdgeInsets padding;

  const MyBtn({
    Key? key,
    required this.label,
    required this.onPressed,
    required this.bacgroundColor,
    required this.texColor,
    this.fullwidth = false,
    this.padding = EdgeInsets.zero,
  })  : assert(label != ""),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
        minSize: 40,
        padding: EdgeInsets.zero,
        child: Container(
            width: fullwidth ? double.infinity : null,

            //aqui le desimos que si this.padding existe que tome el valor
            //y caso contrario que agarra el valor 'EdgeInsets.symmetric(horizontal: 30, vertical: 18)',
            padding: this.padding,
            //  ??   EdgeInsets.symmetric(horizontal: 30, vertical: 18),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: this.bacgroundColor,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black38,
                      blurRadius: 10,
                      offset: Offset(0, 5))
                ]),
            child: Text(
              label,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: this.texColor,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.5),
            )),
        onPressed: () {
          FocusScope.of(context).unfocus();
          onPressed();
        });
  }
}
