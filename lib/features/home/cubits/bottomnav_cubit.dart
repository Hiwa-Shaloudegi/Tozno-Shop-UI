import 'package:flutter_bloc/flutter_bloc.dart';

part 'bottomnav_state.dart';

class BottomNavCubit extends Cubit<BottomNavState> {
  BottomNavCubit() : super(BottomNavState(bottomNavItem: BottomNavItem.home));

  void changeSelectedItem(BottomNavItem bottomNavItem) {
    emit(state.copyWith(bottomNavItem: bottomNavItem));
  }
}
