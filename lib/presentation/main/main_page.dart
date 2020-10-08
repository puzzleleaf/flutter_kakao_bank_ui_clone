import 'package:flutter/material.dart';
import 'package:kakao_bank/presentation/main/components/account_card.dart';
import 'package:kakao_bank/presentation/main/components/ad_card.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff343B57),
      appBar: AppBar(
        centerTitle: true,
        title: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: 600,
          ),
          child: Row(
            children: [
              Text(
                'Puzzleleaf',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
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
                  '내 계좌',
                  style: TextStyle(fontSize: 12),
                ),
              ),
              Spacer(),
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://yt3.ggpht.com/a-/AOh14GidBGTEH9UxT-eVgchRp5kISMZYFjSjBAnqWNWr4Q=s100-c-k-c0xffffffff-no-rj-mo'),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        child: Container(
          padding: const EdgeInsets.all(16.0),
          constraints: BoxConstraints(
            maxWidth: 632,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                AdCard(
                  margin: const EdgeInsets.only(bottom: 15),
                  title: "KB증권 주식계좌 최초 개설하면",
                  contents: "즉시 5천원 축하금(~10/31)",
                ),
                AccountCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
