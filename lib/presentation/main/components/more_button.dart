import 'package:flutter/material.dart';

class MoreButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xff2B3044),
      ),
      height: 60,
      child: Icon(
        Icons.add,
        size: 35,
        color: Color(0xff6A6E7A),
      ),
    );
  }
}
