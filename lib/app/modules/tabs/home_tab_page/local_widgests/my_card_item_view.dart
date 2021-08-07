import 'package:flutter/material.dart';

class MyCardItemView extends StatelessWidget {
  final String label;
  final double price;
  final String description;
  final String imageNetwork;
  const MyCardItemView({
    Key? key,
    required this.label,
    required this.price,
    required this.description,
    required this.imageNetwork,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _styleBold = TextStyle(fontWeight: FontWeight.bold);
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 100,
          width: 100,
          child: FadeInImage(
            placeholder: AssetImage('assets/images/loading.gif'),
            image: NetworkImage(
              imageNetwork,
            ),
            fit: BoxFit.cover,
          ),
        ),
        Text(label),
        Text(
          description,
          softWrap: true,
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          price.toString(),
          style: _styleBold,
        ),
      ],
    );
  }
}
