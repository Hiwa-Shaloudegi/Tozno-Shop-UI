import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(top: 8, bottom: 16),
      sliver: SliverGrid.builder(
        itemCount: 12,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          // mainAxisSpacing: 32,
          mainAxisExtent: 230,
        ),
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                width: 180,
                height: 160,
                decoration: BoxDecoration(
                  color: const Color(0xffDBDFE0),
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                      Row(
                        children: [
                          Visibility(
                            visible: index % 3 == 0 ? false : true,
                            child: Text(
                              '\$265.00',
                              style: GoogleFonts.montserrat(
                                textStyle: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                  decoration: TextDecoration.lineThrough,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 8),
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
                    ],
                  ),
                  const Spacer(),
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: index == 1
                          ? const Color(0xff3A41EE)
                          : Colors.transparent,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: index == 1
                            ? Colors.transparent
                            : const Color(0xff3A41EE),
                        width: 1.5,
                      ),
                    ),
                    child: Icon(
                      index == 1
                          ? CupertinoIcons.cart_fill
                          : CupertinoIcons.cart,
                      color: index == 1 ? Colors.white : Colors.black,
                      size: 20,
                    ),
                  ),
                  // IconButton(
                  //   onPressed: () {},
                  //   icon: Icon(CupertinoIcons.cart),
                  // ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
