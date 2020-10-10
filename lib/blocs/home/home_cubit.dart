import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<int> {
  HomeCubit() : super(0);

  void getMain() => emit(0);
  void getCatalog() => emit(1);
  void getNotification() => emit(2);
  void getMore() => emit(3);
}