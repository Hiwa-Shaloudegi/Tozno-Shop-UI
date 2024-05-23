import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:tozno/config/routes/app_routes.dart';

import '../auth/auth_page.dart';

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
      'image': 'assets/images/intro_1.jpg',
      'title': "Women’s Fashion",
      'content':
          "The first mate and his Skipper too will do their very comfortable in their islanded nest to till the done end. ",
    },
    {
      'bgColor': const Color(0xffFFDC38),
      'frColor': const Color(0xffD0D0D0),
      'image': 'assets/images/intro_2.jpg',
      'title': "Men’s Fashion",
      'content':
          "The first mate and his Skipper too will do their very comfortable in their islanded nest to till the done end. ",
    },
    {
      'bgColor': const Color(0xffE281AC),
      'frColor': const Color(0xffD0D0D0),
      'image': 'assets/images/intro_3.jpg',
      'title': "Accessories",
      'content':
          "The first mate and his Skipper too will do their very comfortable in their islanded nest to till the done end. ",
    },
  ];

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     backgroundColor: const Color(0xff1C1C1C),
  //     body: SafeArea(
  //       child: Stack(
  //         // fit: StackFit.expand,
  //         children: [
  //           // const SizedBox(
  //           //   // width: double.infinity,
  //           //   height: double.infinity,
  //           // ),
  //           PageView.builder(
  //             controller: pageController,
  //             itemCount: 3,
  //             itemBuilder: (context, index) {
  //               Map introContent = _introContents[index];
  //               return IntroItemView(
  //                 title: introContent['title'],
  //                 content: introContent['content'],
  //                 backgroundPlaceholderColor: introContent['bgColor'],
  //                 foregroundPlaceholderColor: introContent['frColor'],
  //               );
  //             },
  //           ),

  //           // Page Indicator
  //           Positioned(
  //             bottom: 28,
  //             right: 0,
  //             left: 0,
  //             child: Padding(
  //               padding: const EdgeInsets.symmetric(horizontal: 16),
  //               child: Row(
  //                 mainAxisAlignment: MainAxisAlignment.spaceAround,
  //                 children: [
  //                   ElevatedButton(
  //                     onPressed: () {
  //                       Navigator.pushNamedAndRemoveUntil(
  //                         context,
  //                         AppPages.auth,
  //                         (route) => false,
  //                       );
  //                     },
  //                     style: ButtonStyle(
  //                       backgroundColor:
  //                           MaterialStateProperty.all(Colors.transparent),
  //                       foregroundColor:
  //                           MaterialStateProperty.all(Colors.white),
  //                       shape: MaterialStateProperty.all(
  //                         RoundedRectangleBorder(
  //                           borderRadius: BorderRadius.circular(32),
  //                           side: const BorderSide(
  //                             color: Colors.white,
  //                             width: 2,
  //                           ),
  //                         ),
  //                       ),
  //                     ),
  //                     child: Text(
  //                       'SKIP',
  //                       style: GoogleFonts.montserrat(
  //                         textStyle: const TextStyle(
  //                           fontWeight: FontWeight.bold,
  //                         ),
  //                       ),
  //                     ),
  //                   ),

  //                   // Dots
  //                   // Container(
  //                   //   color: Colors.transparent,
  //                   //   height: 10,
  //                   //   width: 50,
  //                   //   child: DotIndicator(
  //                   //     pageController: pageController,
  //                   //     count: 3,
  //                   //     spacing: 10,
  //                   //   ),
  //                   // ),
  //                   SmoothPageIndicator(
  //                     controller: pageController,
  //                     count: 3,
  //                     axisDirection: Axis.horizontal,
  //                     effect: const WormEffect(
  //                       dotWidth: 10,
  //                       dotHeight: 10,
  //                       // strokeWidth: 1.5,
  //                       dotColor: Colors.grey,
  //                       spacing: 10,
  //                       activeDotColor: Colors.white,
  //                     ),
  //                   ),
  //                   ElevatedButton(
  //                     onPressed: () {
  //                       if (pageController.page != _introContents.length - 1) {
  //                         pageController.nextPage(
  //                           duration: const Duration(milliseconds: 500),
  //                           curve: Curves.easeInOut,
  //                         );
  //                       } else {
  //                         Navigator.pushNamedAndRemoveUntil(
  //                           context,
  //                           AppPages.auth,
  //                           (route) => false,
  //                         );
  //                       }
  //                     },
  //                     style: ButtonStyle(
  //                       backgroundColor:
  //                           MaterialStateProperty.all(const Color(0xff3A41EE)),
  //                       foregroundColor:
  //                           MaterialStateProperty.all(Colors.white),
  //                       shape: MaterialStateProperty.all(
  //                         RoundedRectangleBorder(
  //                           borderRadius: BorderRadius.circular(32),
  //                         ),
  //                       ),
  //                     ),
  //                     child: Text(
  //                       /* pageController.page == 2 ? 'Done' :*/ 'NEXT',
  //                       style: GoogleFonts.montserrat(
  //                         textStyle: const TextStyle(
  //                           fontWeight: FontWeight.bold,
  //                         ),
  //                       ),
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //             ),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }

  // TODO: Using Slivers
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);

    return Scaffold(
      backgroundColor: const Color(0xff1C1C1C),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            color: Color(0xff3A41EE),
            image: DecorationImage(
              image: AssetImage(
                'assets/images/intro_0.png',
              ),
              filterQuality: FilterQuality.high,
              opacity: 2,
              colorFilter: ColorFilter.mode(
                Colors.white,
                BlendMode.saturation,
              ),
              alignment: Alignment(0, -0.9),
              fit: BoxFit.fitWidth,
            ),
          ),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: SizedBox(
                  // color: Colors.blue,
                  height: size.height * 0.8,
                  child: PageView.builder(
                    controller: pageController,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      Map introContent = _introContents[index];
                      return Stack(
                        fit: StackFit.expand,
                        children: [
                          Positioned(
                            top: size.height * 0.1,
                            left: 0,
                            right: 0,
                            child: Center(
                              child: Stack(
                                children: [
                                  Transform.rotate(
                                    angle: -0.25,
                                    child: Container(
                                      width: size.width * 0.7,
                                      height: size.width * 0.8,
                                      decoration: BoxDecoration(
                                        color: introContent['bgColor'],
                                        borderRadius: BorderRadius.circular(6),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: size.width * 0.7,
                                    height: size.width * 0.8,
                                    decoration: BoxDecoration(
                                      color: introContent['frColor'],
                                      borderRadius: BorderRadius.circular(6),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          introContent['image'],
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: size.height * 0.05,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 32),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: size.width * 0.9,
                                    child: Text(
                                      introContent['title'],
                                      style: GoogleFonts.montserrat(
                                        textStyle: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  SizedBox(
                                    width: size.width * 0.9,
                                    child: Text(
                                      introContent['content'],
                                      style: GoogleFonts.quicksand(
                                        textStyle: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );

                      // return IntroItemView(
                      //   title: introContent['title'],
                      //   content: introContent['content'],
                      //   backgroundPlaceholderColor: introContent['bgColor'],
                      //   foregroundPlaceholderColor: introContent['frColor'],
                      // );
                    },
                  ),
                ),
              ),
              SliverFillRemaining(
                hasScrollBody: false,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AuthPage(),
                            ),
                            (route) => false,
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              WidgetStateProperty.all(Colors.transparent),
                          foregroundColor:
                              WidgetStateProperty.all(Colors.white),
                          shape: WidgetStateProperty.all(
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
                          if (pageController.page !=
                              _introContents.length - 1) {
                            pageController.nextPage(
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeInOut,
                            );
                          } else {
                            Navigator.pushNamedAndRemoveUntil(
                              context,
                              AppPages.auth,
                              (route) => true,
                            );
                          }
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              WidgetStateProperty.all(const Color(0xff3A41EE)),
                          foregroundColor:
                              WidgetStateProperty.all(Colors.white),
                          shape: WidgetStateProperty.all(
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
      ),
    );
  }
}
