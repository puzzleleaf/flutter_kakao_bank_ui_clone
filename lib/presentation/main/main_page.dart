import 'package:flutter/material.dart';
import 'package:kakao_bank/presentation/main/components/checking_account_card.dart';
import 'package:kakao_bank/presentation/main/components/main_ad_card.dart';
import 'package:kakao_bank/presentation/main/components/main_app_bar.dart';
import 'package:kakao_bank/presentation/main/components/more_button.dart';
import 'package:kakao_bank/presentation/main/components/savings_account_card.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff343B57),
      body: SafeArea(
        child: Container(
          alignment: Alignment.topCenter,
          child: Container(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
            constraints: BoxConstraints(
              maxWidth: 632,
            ),
            child: CustomScrollView(
              key: PageStorageKey<String>("main"),
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
                    MainAdCard(
                      title: "Puzzleleaf Youtube",
                      content: "If you want to see the Flutter video!",
                    ),
                    SizedBox(height: 15),
                    CheckingAccountCard(),
                    SizedBox(height: 15),
                    SavingAccountCard(
                      color: Color(0xffF1A8AF),
                    ),
                    SizedBox(height: 15),
                    SavingAccountCard(
                      color: Color(0xffD16562),
                    ),
                    SizedBox(height: 15),
                    SavingAccountCard(
                      color: Color(0xffDD8369),
                    ),
                    SizedBox(height: 15),
                    MoreButton(),
                    SizedBox(height: 50),
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
