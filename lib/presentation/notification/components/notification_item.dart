import 'package:flutter/material.dart';

class NotificationItem extends StatelessWidget {
  final String title;
  final String content;
  final IconData icon;
  final String date;

  const NotificationItem({Key key, this.title, this.content, this.icon, this.date}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 30,
              margin: const EdgeInsets.only(right: 10),
              child: Icon(icon),
            ),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: 40,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    content,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    date,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.4),
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Icon(
                Icons.keyboard_arrow_right,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
