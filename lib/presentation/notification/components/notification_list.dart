import 'package:flutter/material.dart';
import 'package:kakao_bank/presentation/notification/components/notification_item.dart';

class NotificationList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'This Week',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 20,),
          NotificationItem(
            title: 'Credit Information Change Notice',
            content: "There is a change in credit information. Please check your credit card and debit card registration information.",
            icon: Icons.mail_outline,
            date: '10th October 2020',
          ),
          SizedBox(height: 20,),
          NotificationItem(
            title: 'Credit Information Change Notice',
            content: "There is a change in credit information. Please check your credit card and debit card registration information.",
            icon: Icons.add_alert,
            date: '9th October 2020',
          ),
          SizedBox(height: 20,),
          NotificationItem(
            title: 'Credit Information Change Notice',
            content: "There is a change in credit information. Please check your credit card and debit card registration information.",
            icon: Icons.notifications_active_outlined,
            date: '8th October 2020',
          ),
        ],
      ),
    );
  }
}
