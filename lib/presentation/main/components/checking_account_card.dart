import 'package:flutter/material.dart';

class CheckingAccountCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xffFAE04B),
      ),
      width: MediaQuery.of(context).size.width,
      height: 220,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 20,
          bottom: 30,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Checking Account ★',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      '1234-56-78901112',
                      style: TextStyle(
                        fontSize: 11,
                        color: Colors.black.withOpacity(0.4),
                      ),
                    )
                  ],
                ),
                Icon(
                  Icons.more_vert,
                  size: 25,
                  color: Colors.black.withOpacity(0.4),
                )
              ],
            ),
            Text(
              "\$ 1,234,567",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.black,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "Transfer",
                    textAlign: TextAlign.center,
                  ),
                ),
                Text(
                  "|",
                  style: TextStyle(
                    color: Color(0xffD8C441),
                  ),
                ),
                Expanded(
                  child: Text(
                    "details",
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
