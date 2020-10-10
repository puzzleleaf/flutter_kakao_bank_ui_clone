import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        children: [
          Text(
            'Puzzleleaf',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          SizedBox(
            width: 5.0,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 6,
            ),
            decoration: BoxDecoration(
              color: Color(0xff2B3044),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              'My Account',
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),
            ),
          ),
          Spacer(),
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://yt3.ggpht.com/a-/AOh14GidBGTEH9UxT-eVgchRp5kISMZYFjSjBAnqWNWr4Q=s100-c-k-c0xffffffff-no-rj-mo'),
            radius: 18,
          ),
        ],
      ),
    );
  }
}
