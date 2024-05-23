import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tozno/common/widgets/custom_app_bar.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});

  static const List<Map<String, dynamic>> _data = [
    {
      'title': 'MEN’S',
      'image': 'assets/images/home_cat_men.png',
    },
    {
      'title': 'WOMEN’S',
      'image': 'assets/images/home_cat_women.png',
    },
    {
      'title': 'ACCESSORIES',
      'image': 'assets/images/accessories.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: const CustomAppBar(title: 'CATEGORIES'),
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: SizedBox(height: 16)),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverList.separated(
              itemCount: 3,
              itemBuilder: (context, index) {
                var item = _data[index];

                return Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: size.height * 0.23,
                      decoration: BoxDecoration(
                        color: const Color(0xffD0D0D0),
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: AssetImage(
                            item['image'],
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      item['title'],
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                );
              },
              separatorBuilder: (context, index) => const SizedBox(height: 20),
            ),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 24)),
        ],
      ),
    );
  }
}
