import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tozno/common/widgets/custom_app_bar.dart';
import 'package:tozno/config/routes/app_routes.dart';
import 'package:tozno/features/cart/widgets/cart_info_item.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: const CustomAppBar(title: 'CART'),
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: SizedBox(height: 20)),
          SliverList.separated(
            itemCount: 2,
            itemBuilder: (context, index) {
              return Container(
                width: double.infinity,
                height: size.height * 0.2,
                margin: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 1),
                      blurRadius: 3,
                      spreadRadius: 1,
                      color: Colors.grey.shade100,
                    ),
                    BoxShadow(
                      offset: const Offset(1, 0),
                      blurRadius: 3,
                      spreadRadius: 5,
                      color: Colors.grey.shade100,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 50,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Container(
                              width: size.width * 0.41,
                              // height: size.height * 0.18,
                              decoration: BoxDecoration(
                                color: const Color(0xffECECEC),
                                image: DecorationImage(
                                  image: AssetImage(
                                    index == 0
                                        ? 'assets/images/home_women.png'
                                        : 'assets/images/home_men.png',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(8),
                                  bottomLeft: Radius.circular(8),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 16),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Jean Shirt',
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        Text(
                          '\$250.00',
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                              color: Color(0xff3A41EE),
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 38,
                      width: 80,
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      margin: const EdgeInsets.only(right: 16, left: 24),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(
                            Icons.add,
                            size: 18,
                          ),
                          // IconButton(
                          //   visualDensity: VisualDensity.compact,
                          //   onPressed: () {},
                          //   icon: Icon(
                          //     Icons.add,
                          //     size: 17,
                          //   ),
                          // ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Text(
                              '1',
                              style: GoogleFonts.montserrat(
                                textStyle: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                          const Icon(
                            Icons.remove,
                            size: 18,
                          ),
                          // IconButton(
                          //   visualDensity: VisualDensity.compact,
                          //   onPressed: () {},
                          //   icon: Icon(
                          //     Icons.remove,
                          //     size: 17,
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(height: 20),
          ),
          const SliverToBoxAdapter(child: SizedBox(height: 50)),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CartInfoItem(
                    title: 'Free Delivery',
                  ),
                  CartInfoItem(
                    title: 'Sub-Total',
                    tailText: '\$500.00',
                  ),
                  CartInfoItem(
                    title: 'Total',
                    tailText: '\$500.00',
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            sliver: SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        WidgetStateProperty.all(const Color(0xff3A41EE)),
                    foregroundColor: WidgetStateProperty.all(Colors.white),
                    padding: WidgetStateProperty.all(
                      const EdgeInsets.symmetric(vertical: 16),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, AppPages.checkout);
                  },
                  child: Text(
                    'CHECKOUT',
                    style: GoogleFonts.montserrat(
                      textStyle: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
