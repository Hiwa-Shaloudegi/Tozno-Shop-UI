import 'package:flutter/material.dart';
import 'package:tozno/config/routes/app_routes.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

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

    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: 3,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemBuilder: (context, index) {
        var item = _data[index];

        return GestureDetector(
          onTap: () => Navigator.pushNamed(
            context,
            AppPages.categories,
          ),
          child: Column(
            children: [
              Container(
                width: size.height * 0.21,
                height: size.height * 0.15,
                margin: const EdgeInsets.symmetric(vertical: 8),
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
              Text(
                item['title'],
              ),
            ],
          ),
        );
      },
      separatorBuilder: (context, index) => const SizedBox(width: 16),
    );
  }
}
