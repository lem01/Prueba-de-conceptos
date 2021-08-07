import 'package:flutter/material.dart';

class MyCardVIew extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  // final List<Widget> children;
  final Widget item1, item2, item3;

  const MyCardVIew({
    Key? key,
    required this.label,
    required this.item1,
    required this.item2,
    required this.item3,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _styleTitle = TextStyle(fontWeight: FontWeight.bold, fontSize: 15);

    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        child: GestureDetector(
          onTap: () => onPressed(),
          child: Card(
            margin: EdgeInsets.zero,
            elevation: 0,
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              padding: EdgeInsets.all(5.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        label,
                        style: _styleTitle,
                        textAlign: TextAlign.left,
                      ),
                      Icon(
                        Icons.keyboard_arrow_right_rounded,
                        size: 25,
                        color: Color(0xffB1B1B1),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: item1,
                      )),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: item3,
                      )),
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: item2,
                      )),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
