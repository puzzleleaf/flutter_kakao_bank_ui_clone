import 'package:flutter/material.dart';
import 'package:kakao_bank/presentation/main/components/checking_account_card.dart';
import 'package:kakao_bank/presentation/main/components/ad_card.dart';
import 'package:kakao_bank/presentation/main/components/MainAppBar.dart';
import 'package:kakao_bank/presentation/main/components/savings_account_card.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff343B57),
      body: Container(
        alignment: Alignment.topCenter,
        child: Container(
          padding: const EdgeInsets.all(16.0),
          constraints: BoxConstraints(
            maxWidth: 632,
          ),
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                titleSpacing: 10,
                title: MainAppBar(),
                backgroundColor: Color(0xff343B57),
                pinned: true,
              ),
              SliverList(
                delegate: SliverChildListDelegate([
                  SizedBox(height: 20),
                  AdCard(
                    title: "Puzzleleaf Youtube",
                    contents: "Have Many Flutter Video Subscripbe!",
                  ),
                  SizedBox(height: 15),
                  CheckingAccountCard(),
                  SizedBox(height: 15),
                  SavingAccountCard(),
                  SizedBox(height: 15),
                  SavingAccountCard(),
                  SizedBox(height: 15),
                  SavingAccountCard(),
                  SizedBox(height: 15),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
