import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tozno/pages/intro/widgets/intro_item_view.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  var pageController = PageController();

  final _introContents = [
    {
      'bgColor': const Color(0xff38C6D3),
      'frColor': const Color(0xffD0D0D0),
      'title': "Women’s Fashion",
      'content':
          "The first mate and his Skipper too will do their very comfortable in their islanded nest to till the done end. ",
    },
    {
      'bgColor': const Color(0xffFFDC38),
      'frColor': const Color(0xffD0D0D0),
      'title': "Men’s Fashion",
      'content':
          "The first mate and his Skipper too will do their very comfortable in their islanded nest to till the done end. ",
    },
    {
      'bgColor': const Color(0xffE281AC),
      'frColor': const Color(0xffD0D0D0),
      'title': "Accessories",
      'content':
          "The first mate and his Skipper too will do their very comfortable in their islanded nest to till the done end. ",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1C1C1C),
      body: SafeArea(
        child: Stack(
          children: [
            const SizedBox(
              width: double.infinity,
              height: double.infinity,
            ),
            PageView.builder(
              controller: pageController,
              itemCount: 3,
              itemBuilder: (context, index) {
                Map introContent = _introContents[index];
                return IntroItemView(
                  title: introContent['title'],
                  content: introContent['content'],
                  backgroundPlaceholderColor: introContent['bgColor'],
                  foregroundPlaceholderColor: introContent['frColor'],
                );
              },
            ),

            // Page Indicator
            Positioned(
              bottom: 28,
              right: 0,
              left: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.transparent),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32),
                            side: const BorderSide(
                              color: Colors.white,
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                      child: Text(
                        'SKIP',
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),

                    // Dots
                    // Container(
                    //   color: Colors.transparent,
                    //   height: 10,
                    //   width: 50,
                    //   child: DotIndicator(
                    //     pageController: pageController,
                    //     count: 3,
                    //     spacing: 10,
                    //   ),
                    // ),
                    SmoothPageIndicator(
                      controller: pageController,
                      count: 3,
                      axisDirection: Axis.horizontal,
                      effect: const WormEffect(
                        dotWidth: 10,
                        dotHeight: 10,
                        // strokeWidth: 1.5,
                        dotColor: Colors.grey,
                        spacing: 10,
                        activeDotColor: Colors.white,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        pageController.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xff3A41EE)),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32),
                          ),
                        ),
                      ),
                      child: Text(
                        /* pageController.page == 2 ? 'Done' :*/ 'NEXT',
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
