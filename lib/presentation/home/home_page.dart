import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kakao_bank/blocs/home/home_cubit.dart';
import 'package:kakao_bank/presentation/catalog/catalog_page.dart';
import 'package:kakao_bank/presentation/main/main_page.dart';
import 'package:kakao_bank/presentation/more/more_page.dart';
import 'package:kakao_bank/presentation/notification/notification_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, int>(
      builder: (_, state) {
        return WillPopScope(
          child: Scaffold(
            bottomNavigationBar: BottomNavigationBar(
              onTap: (index) {
                _changeBottomNav(_, index);
              },
              currentIndex: state,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              selectedItemColor: Colors.black,
              unselectedItemColor: Colors.grey,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.apps,
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.notifications,
                  ),
                  label: "",
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.more_horiz,
                  ),
                  label: "",
                ),
              ],
            ),
            body: _buildBody(state),
          ),
        );
      },
    );
  }

  void _changeBottomNav(BuildContext context, int index) {
    switch (index) {
      case 0:
        context.bloc<HomeCubit>().getMain();
        break;
      case 1:
        context.bloc<HomeCubit>().getCatalog();
        break;
      case 2:
        context.bloc<HomeCubit>().getNotification();
        break;
      case 3:
        context.bloc<HomeCubit>().getMore();
        break;
    }
  }

  Widget _buildBody(index) {
    switch (index) {
      case 0:
        return MainPage();
      case 1:
        return CatalogPage();
      case 2:
        return NotificationPage();
      case 3:
        return MorePage();
    }
  }
}
