import 'package:flutter/material.dart';

class CircleIndicator extends StatelessWidget {
  final int count;
  final int current;

  const CircleIndicator({Key key, this.count, this.current}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        for (var i = 0; i < count; i++)
          i == current ? selectedDot() : normalDot()
      ],
    );
  }

  Widget selectedDot() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(80),
        color: Colors.white,
      ),
    );
  }

  Widget normalDot() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(80),
        color: Colors.white.withOpacity(0.4),
      ),
    );
  }
}
