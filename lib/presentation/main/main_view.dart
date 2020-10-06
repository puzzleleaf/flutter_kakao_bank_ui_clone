import 'package:flutter/material.dart';

class MainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff343B57),
      appBar: AppBar(
        centerTitle: false,
        title: Row(
          children: [
            Text(
              'Name',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 5.0,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: Color(0xff2B3044),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                'My Account',
                style: TextStyle(fontSize: 12),
              ),
            ),
            Spacer(),
            Text('go')
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                width: double.infinity,
                height: 50,
                constraints: BoxConstraints(
                  maxWidth: 600,
                ),
              ),
              SizedBox(height: 15,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffFAE04B),
                ),
                width: double.infinity,
                height: 200,
              )
            ],
          ),
        ),
      ),
    );
  }
}
