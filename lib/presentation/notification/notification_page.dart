import 'package:flutter/material.dart';
import 'package:kakao_bank/presentation/notification/components/notification_app_bar.dart';
import 'package:kakao_bank/presentation/notification/components/notification_list.dart';
import 'package:kakao_bank/presentation/notification/components/old_notification_list.dart';

class NotificationPage extends StatelessWidget {
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
              key: PageStorageKey<String>("notification"),
              slivers: [
                SliverAppBar(
                  titleSpacing: 10,
                  elevation: 0,
                  pinned: true,
                  backgroundColor: Colors.white,
                  title: NotificationAppBar(),
                ),
                SliverList(
                  delegate: SliverChildListDelegate.fixed(
                    [
                      NotificationList(),
                      SizedBox(height: 20,),
                      OldNotificationList(),
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
