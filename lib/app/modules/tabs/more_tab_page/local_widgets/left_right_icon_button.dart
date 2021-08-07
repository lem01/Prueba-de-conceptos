import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LeftRihtIconButton extends StatelessWidget {
  final String leftIcon, label;
  final VoidCallback onPressed;
  final Widget rightContent;

  const LeftRihtIconButton(
      {Key? key,
      required this.leftIcon,
      this.label = '',
      required this.onPressed,
      required this.rightContent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: onPressed,
      padding: EdgeInsets.zero,
      child: Container(
        // color: Colors.blue,
        padding: EdgeInsets.symmetric(vertical: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Row(
                children: [
                  if (leftIcon != "")
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: SvgPicture.asset(
                        leftIcon,
                        width: 30,
                        height: 30,
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      label,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            // if (rightContent != null)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: rightContent,
            )
          ],
        ),
      ),
    );
  }
}
