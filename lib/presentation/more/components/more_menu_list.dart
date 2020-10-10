import 'package:flutter/material.dart';

class MoreMenuList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Icon(
                  Icons.phone,
                  size: 40,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Customer Service",
                  style: TextStyle(fontSize: 10),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Icon(
                  Icons.lock,
                  size: 40,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Security",
                  style: TextStyle(fontSize: 10),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Icon(
                  Icons.add_alert,
                  size: 40,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Notice",
                  style: TextStyle(fontSize: 10),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Icon(
                  Icons.card_giftcard,
                  size: 40,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Event",
                  style: TextStyle(fontSize: 10),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
