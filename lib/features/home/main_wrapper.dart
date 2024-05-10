import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tozno/features/home/cubits/bottomnav_cubit.dart';
import 'package:tozno/features/home/home_page.dart';

class MainWrapper extends StatelessWidget {
  const MainWrapper({super.key});

  static final List<Widget> _pages = [
    const HomePage(),
    Container(color: Colors.amber),
    Container(color: Colors.blue),
    Container(color: Colors.purple),
    Container(color: Colors.green),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavCubit, BottomNavState>(
      builder: (context, state) {
        return Scaffold(
          bottomNavigationBar: DecoratedBox(
            decoration: BoxDecoration(
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 20,
                  spreadRadius: 3,
                  offset: const Offset(0, -1),
                ),
              ],
            ),
            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: state.bottomNavItem.index,
              selectedIconTheme: const IconThemeData(
                color: Color(0xff3A41EE),
                size: 32,
              ),
              unselectedIconTheme: const IconThemeData(
                color: Colors.black,
                size: 26,
              ),
              onTap: (index) {
                context
                    .read<BottomNavCubit>()
                    .changeSelectedItem(BottomNavItem.values[index]);
              },
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.heart),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.profile_circled),
                  label: '',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.settings),
                  label: '',
                ),
              ],
            ),
          ),
          body: IndexedStack(
            index: state.bottomNavItem.index,
            children: _pages,
          ),
        );
      },
    );
  }
}
