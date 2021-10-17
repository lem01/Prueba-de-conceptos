import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class CustomNavigationBar extends StatelessWidget {
  final dynamic Function(int) onTap;
  final int currentIndex;
  const CustomNavigationBar({
    required this.onTap(int i),
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SalomonBottomBar(onTap: onTap, currentIndex: currentIndex, items: [
        SalomonBottomBarItem(
            activeIcon: Image.network(
              "https://image.flaticon.com/icons/png/512/3145/3145825.png",
              height: 22,
            ),
            icon: Icon(Icons.home),
            title: Text("Inicio"),
            selectedColor: Colors.redAccent),
        SalomonBottomBarItem(
            icon: Icon(Icons.shopping_bag),
            title: Text("Offertas"),
            selectedColor: Colors.orangeAccent),
        SalomonBottomBarItem(
            icon: Icon(Icons.history),
            title: Text("Historial"),
            selectedColor: Colors.blueAccent),
        SalomonBottomBarItem(
            icon: Icon(Icons.more_horiz),
            title: Text("Mas"),
            selectedColor: Colors.greenAccent)
      ]),
    );
  }
}
