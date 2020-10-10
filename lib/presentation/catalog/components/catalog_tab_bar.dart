import 'package:flutter/material.dart';

class CatalogTabBar extends StatelessWidget {

  final TabController tabController;
  final Function onTap;

  const CatalogTabBar({Key key, this.tabController, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: tabController,
      isScrollable: true,
      onTap: onTap,
      unselectedLabelColor: Colors.grey,
      labelPadding: const EdgeInsets.symmetric(horizontal: 10),
      indicatorColor: Colors.black,
      indicatorWeight: 2.0,
      labelColor: Colors.black,
      tabs: <Widget>[
        Tab(
          child: Text(
            "All",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        Tab(
          child: Text(
            "Account",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        Tab(
          child: Text(
            "Loan",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        Tab(
          child: Text(
            "Service",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        Tab(
          child: Text(
            "Alliance",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
      ],
      indicatorSize: TabBarIndicatorSize.label,
    );
  }
}
