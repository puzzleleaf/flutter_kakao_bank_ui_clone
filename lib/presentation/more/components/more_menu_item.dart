import 'package:flutter/material.dart';

class MoreMenuItem extends StatelessWidget {

  final String text;

  const MoreMenuItem({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text, style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),),
          Icon(Icons.keyboard_arrow_right_outlined),
        ],
      ),
    );
  }
}
