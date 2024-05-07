import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                Container(
                  width: double.infinity,
                  height: size.height * 0.35,
                  color: const Color(0xff3A41EE),
                ),
                Positioned(
                  top: size.height * 0.09,
                  left: 32,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome to Tozno!',
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Text(
                        'Get Started Now..',
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: -30, //TODO: 1
                  child: Container(
                    constraints: BoxConstraints(
                      maxWidth: size.width * 0.75,
                      minWidth: size.width * 0.5,
                    ),
                    height: 60, //TODO(1): bottom * 2
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(32),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xff707070),
                          offset: Offset(0, 1),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(32),
                                topLeft: Radius.circular(32),
                              ),
                            ),
                            child: Text(
                              'LOGIN',
                              style: GoogleFonts.montserrat(
                                textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(32),
                                topRight: Radius.circular(32),
                              ),
                            ),
                            child: Text(
                              'REGISTER',
                              style: GoogleFonts.montserrat(
                                textStyle: const TextStyle(
                                  color: Color(0xff3A41EE),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
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
            const SizedBox(height: 64),
            Text(
              'Login to Continue',
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  letterSpacing: 0,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
              child: Column(
                children: [
                  TextField(
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'example@gmail.com',
                      hintStyle: TextStyle(
                        color: Colors.grey.withOpacity(0.5),
                      ),
                      labelText: 'EMAIL ID',
                      labelStyle: const TextStyle(
                        color: Color(0xff555555),
                      ),
                    ),
                  ),
                  TextField(
                    onSubmitted: (value) {},
                    obscureText: true,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                      hintText: '12345678',
                      hintStyle: TextStyle(
                        color: Colors.grey.withOpacity(0.5),
                      ),
                      labelText: 'PASSWORD',
                      labelStyle: const TextStyle(
                        color: Color(0xff555555),
                      ),
                    ),
                  ),
                  SizedBox(height: 28),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xff3A41EE)),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      minimumSize: MaterialStateProperty.all(
                        const Size(double.infinity, 50),
                      ),
                    ),
                    child: Text(
                      'LOGIN',
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Don’t have account? ',
                        style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                            color: Colors.black,

                            // fontSize: 18,
                            // fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Text(
                        'Sign up',
                        style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            decoration: TextDecoration.underline,

                            // fontSize: 18,
                            // fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text(
                    '- or -',
                    style: GoogleFonts.quicksand(
                      textStyle: const TextStyle(
                        color: Colors.black,

                        // fontSize: 18,
                        // fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xff507CC0)),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      minimumSize: MaterialStateProperty.all(
                        const Size(double.infinity, 50),
                      ),
                    ),
                    child: Text(
                      'LOGIN WITH FACEBOOK',
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xff64CCF1)),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      minimumSize: MaterialStateProperty.all(
                        const Size(double.infinity, 50),
                      ),
                    ),
                    child: Text(
                      'LOGIN WITH TWITTER',
                      style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
