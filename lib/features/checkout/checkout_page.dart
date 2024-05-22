import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tozno/common/widgets/custom_app_bar.dart';
import 'package:tozno/common/widgets/custom_text_field.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);

    return Scaffold(
      appBar: const CustomAppBar(title: 'CHECKOUT'),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Container(
                  width: double.infinity,
                  height: size.height * 0.25,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 28, vertical: 20),
                  decoration: BoxDecoration(
                    color: const Color(0xff3A41EE),
                    borderRadius: BorderRadius.circular(4),
                    gradient: const LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Color(0xff000046),
                        Color(0xff1A39A3),
                        Color(0xff3371FF),
                      ],
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'VISA',
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Text(
                            'Bank Name',
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Container(
                        width: 55,
                        height: 40,
                        decoration: BoxDecoration(
                          color: const Color(0xffE48D1D),
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        '1234 5685 8535 0000',
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Mark Henry',
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 32)),
              const SliverToBoxAdapter(
                child: CustomSingleTextField(
                  title: 'NEW CARDS',
                  hintText: 'Add a New Card',
                  icon: Icon(
                    CupertinoIcons.creditcard,
                    color: Colors.red,
                    size: 26,
                  ),
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 24)),
              const SliverToBoxAdapter(
                child: CustomSingleTextField(
                  title: 'BANK ACCOUNT',
                  hintText: 'Andrew Thomas  **** 1230',
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 24)),
              SliverToBoxAdapter(
                child: CustomMultiTextFields(
                  title: 'CREDIT / DEBIT CARDS',
                  textFields: [
                    CustomSingleTextField(
                      hintText: '****  ****  ****  4587',
                      suffixIcon: Image.asset(
                        'assets/icons/Icon-1.png',
                        scale: 2,
                      ),
                    ),
                    CustomSingleTextField(
                      hintText: '****  ****  ****  0015',
                      suffixIcon: Image.asset(
                        'assets/icons/Icon-2.png',
                        scale: 2,
                      ),
                    ),
                    CustomSingleTextField(
                      hintText: 'Andrewthom@mail.com',
                      suffixIcon: Image.asset(
                        'assets/icons/Icon-3.png',
                        scale: 2,
                      ),
                    ),
                  ],
                ),
              ),
              const SliverToBoxAdapter(child: SizedBox(height: 24)),
              SliverToBoxAdapter(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: CustomSingleTextField(
                        title: 'COUPON CODE',
                        hintText: 'TA2940H',
                        trailingWidget: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all(
                                const Color(0xff3A41EE)),
                            foregroundColor:
                                WidgetStateProperty.all(Colors.white),
                            shape: WidgetStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                            ),
                            minimumSize: WidgetStateProperty.all(
                              const Size(40, 55),
                            ),
                          ),
                          child: Text(
                            'APPLY',
                            style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        icon: Transform.rotate(
                          angle: -1,
                          child: const Icon(CupertinoIcons.ticket),
                        ),
                        hasSuffixIcon: false,
                      ),
                    ),
                  ],
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.symmetric(vertical: 32),
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
                        // Navigator.pushNamed(context, AppPages.checkout);
                      },
                      child: Text(
                        'PROCEED TO PAY',
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
        ),
      ),
    );
  }
}
