import 'package:flutter/material.dart';
import 'package:kakao_bank/presentation/more/components/more_app_bar.dart';
import 'package:kakao_bank/presentation/more/components/more_menu_item.dart';
import 'package:kakao_bank/presentation/more/components/more_menu_list.dart';

class MorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          alignment: Alignment.topCenter,
          child: Container(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
            constraints: BoxConstraints(
              maxWidth: 632,
            ),
            child: CustomScrollView(
              key: PageStorageKey<String>("more"),
              slivers: [
                SliverAppBar(
                  titleSpacing: 10,
                  elevation: 0,
                  pinned: true,
                  backgroundColor: Colors.white,
                  title: MoreAppBar(),
                ),
                SliverList(
                  delegate: SliverChildListDelegate.fixed(
                    [
                      MoreMenuList(),
                      Divider(
                        height: 20,
                      ),
                      MoreMenuItem(
                        text: "My Account",
                      ),
                      MoreMenuItem(
                        text: "My Credit Information",
                      ),
                      Divider(
                        height: 20,
                      ),
                      MoreMenuItem(
                        text: "Account Transfers",
                      ),
                      MoreMenuItem(
                        text: "Account Type",
                      ),
                      MoreMenuItem(
                        text: "Annual Fee",
                      ),
                      MoreMenuItem(
                        text: "Banking Fees",
                      ),
                      MoreMenuItem(
                        text: "Bill Payment",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
