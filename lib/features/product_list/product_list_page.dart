import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tozno/common/widgets/custom_app_bar.dart';
import 'package:tozno/features/product_list/cubit/view_mode_cubit.dart';
import 'package:tozno/features/product_list/widgets/product_grid_view.dart';
import 'package:tozno/features/product_list/widgets/product_list_view.dart';

class ProductListPage extends StatelessWidget {
  const ProductListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'WOMEN’S'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(child: SizedBox(height: 16)),
            SliverToBoxAdapter(
              child: Row(
                children: [
                  Text(
                    'Clothings',
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const Spacer(),
                  BlocBuilder<ViewModeCubit, ViewModeState>(
                    builder: (context, viewModeState) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                              context
                                  .read<ViewModeCubit>()
                                  .changeViewMode(ViewMode.list);
                            },
                            icon: Icon(
                              color: viewModeState.viewMode == ViewMode.list
                                  ? Colors.black
                                  : Colors.grey,
                              Icons.list_rounded,
                              size: 38,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              context
                                  .read<ViewModeCubit>()
                                  .changeViewMode(ViewMode.grid);
                            },
                            icon: Icon(
                              color: viewModeState.viewMode == ViewMode.grid
                                  ? Colors.black
                                  : Colors.grey,
                              CupertinoIcons.circle_grid_3x3_fill,
                              size: 24,
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
            BlocBuilder<ViewModeCubit, ViewModeState>(
              builder: (context, state) {
                if (state.viewMode == ViewMode.list) {
                  return const ProductListView();
                } else {
                  return const ProductGridView();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
