import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);

    return Column(
      children: [
        Text(
          'Signup to Tozno',
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextField(
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: 'seth',
                        hintStyle: TextStyle(
                          color: Colors.grey.withOpacity(0.5),
                        ),
                        labelText: 'FIRST NAME',
                        labelStyle: const TextStyle(
                          color: Color(0xff555555),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 32),
                  Expanded(
                    child: TextField(
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                        hintText: 'rollins',
                        hintStyle: TextStyle(
                          color: Colors.grey.withOpacity(0.5),
                        ),
                        labelText: 'LAST NAME',
                        labelStyle: const TextStyle(
                          color: Color(0xff555555),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              TextField(
                textInputAction: TextInputAction.next,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: '(+2) 9010 1910 201',
                  hintStyle: TextStyle(
                    color: Colors.grey.withOpacity(0.5),
                  ),
                  labelText: 'PHONE',
                  labelStyle: const TextStyle(
                    color: Color(0xff555555),
                  ),
                ),
              ),
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
              const SizedBox(height: 28),
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
                  'REGISTER',
                  style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Already have account? ',
                    style: GoogleFonts.quicksand(
                      textStyle: const TextStyle(
                        color: Colors.black,

                        // fontSize: 18,
                        // fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Text(
                    'Sign in',
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
              // const SizedBox(height: 16),
              // Text(
              //   '- or -',
              //   style: GoogleFonts.quicksand(
              //     textStyle: const TextStyle(
              //       color: Colors.black,
              //
              //       // fontSize: 18,
              //       // fontWeight: FontWeight.w500,
              //     ),
              //   ),
              // ),
              // const SizedBox(height: 16),
              // ElevatedButton(
              //   onPressed: () {},
              //   style: ButtonStyle(
              //     backgroundColor:
              //         MaterialStateProperty.all(
              //             const Color(0xff507CC0)),
              //     foregroundColor:
              //         MaterialStateProperty.all(
              //             Colors.white),
              //     minimumSize: MaterialStateProperty.all(
              //       const Size(double.infinity, 50),
              //     ),
              //   ),
              //   child: Text(
              //     'LOGIN WITH FACEBOOK',
              //     style: GoogleFonts.montserrat(
              //       textStyle: const TextStyle(
              //         color: Colors.white,
              //         fontSize: 16,
              //       ),
              //     ),
              //   ),
              // ),
              // const SizedBox(height: 16),
              // ElevatedButton(
              //   onPressed: () {},
              //   style: ButtonStyle(
              //     backgroundColor:
              //         MaterialStateProperty.all(
              //             const Color(0xff64CCF1)),
              //     foregroundColor:
              //         MaterialStateProperty.all(
              //             Colors.white),
              //     minimumSize: MaterialStateProperty.all(
              //       const Size(double.infinity, 50),
              //     ),
              //   ),
              //   child: Text(
              //     'LOGIN WITH TWITTER',
              //     style: GoogleFonts.montserrat(
              //       textStyle: const TextStyle(
              //         color: Colors.white,
              //         fontSize: 16,
              //       ),
              //     ),
              //   ),
              // ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ],
    );
  }
}
