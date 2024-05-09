import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);

    return Column(
      children: [
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
                  'LOGIN',
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
              const SizedBox(height: 16),
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
              const SizedBox(height: 16),
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
              const SizedBox(height: 16),
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
              const SizedBox(height: 40),
            ],
          ),
        ),
      ],
    );
  }
}
