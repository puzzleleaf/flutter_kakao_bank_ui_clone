import 'package:flutter/material.dart';

class MainAdCard extends StatelessWidget {
  final String title;
  final String content;

  MainAdCard({this.title, this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      height: 70,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  content,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Spacer(),
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://yt3.ggpht.com/a-/AOh14GidBGTEH9UxT-eVgchRp5kISMZYFjSjBAnqWNWr4Q=s100-c-k-c0xffffffff-no-rj-mo'),
            ),
          ],
        ),
      ),
    );
  }
}
