part of 'bottomnav_cubit.dart';

enum BottomNavItem {
  home,
  fav,
  profile,
  setting,
}

class BottomNavState {
  final BottomNavItem bottomNavItem;

  BottomNavState({required this.bottomNavItem});

  BottomNavState copyWith({BottomNavItem? bottomNavItem}) {
    return BottomNavState(
      bottomNavItem: bottomNavItem ?? this.bottomNavItem,
    );
  }
}
