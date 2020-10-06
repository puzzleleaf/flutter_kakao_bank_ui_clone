import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kakao_bank/blocs/home/home_cubit.dart';
import 'package:kakao_bank/presentation/catalog/catalog_page.dart';
import 'package:kakao_bank/presentation/main/main_page.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, int>(
      builder: (_, state) {
        return WillPopScope(
          child: SafeArea(
            child: Scaffold(
              bottomNavigationBar: BottomNavigationBar(
                onTap: (index) {
                  _changeBottomNav(_, index);
                },
                currentIndex: state,
                type: BottomNavigationBarType.fixed,
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
          ),
        );
      },
    );
  }

  void _changeBottomNav(BuildContext context, int index) {
    switch(index) {
      case 0:
        context.bloc<HomeCubit>().getMain();
        break;
      case 1:
        context.bloc<HomeCubit>().getCatalog();
        break;
    }
  }

  Widget _buildBody(index) {
    switch(index) {
      case 0:
        return MainPage();
      default:
        return CatalogPage();
    }
  }
}
