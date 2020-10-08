import 'package:flutter/material.dart';

class AccountCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xffFAE04B),
      ),
      width: double.infinity,
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
                      '월급! ★',
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
                        color: Color(0xffD8C441),
                      ),
                    )
                  ],
                ),
                Icon(
                  Icons.more_vert,
                  size: 25,

                )
              ],
            ),
            Text(
              "금액보기",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Color(0xffD8C441),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "이체",
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
                    "카드이용내역",
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
