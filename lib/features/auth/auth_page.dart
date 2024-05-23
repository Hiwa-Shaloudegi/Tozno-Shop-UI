import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tozno/features/auth/cubit/auth_cubit.dart';
import 'package:tozno/features/auth/widgets/auth_view_toggle_button.dart';
import 'package:tozno/features/auth/widgets/login_form.dart';
import 'package:tozno/features/auth/widgets/signup_form.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);

    return BlocProvider(
      create: (context) => AuthCubit(),
      child: Scaffold(
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
                    decoration: const BoxDecoration(
                      color: Color(0xff3A41EE),
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/images/intro_0.png',
                        ),
                        filterQuality: FilterQuality.high,
                        alignment: Alignment(0, -0.9),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
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

                  // Auth Toggle Button
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
                      child: BlocBuilder<AuthCubit, AuthState>(
                        builder: (context, authState) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: AuthViewToggleButton(
                                  text: 'LOGIN',
                                  isSelected:
                                      authState.authView == AuthView.login,
                                  onTap: () => context
                                      .read<AuthCubit>()
                                      .changeAuthView(authView: AuthView.login),
                                ),
                              ),
                              Expanded(
                                child: AuthViewToggleButton(
                                  text: 'REGISTER',
                                  isSelected:
                                      authState.authView == AuthView.signup,
                                  isLeft: false,
                                  onTap: () => context
                                      .read<AuthCubit>()
                                      .changeAuthView(
                                          authView: AuthView.signup),
                                ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 64),

              // Form Auth
              BlocSelector<AuthCubit, AuthState, AuthView>(
                selector: (state) => state.authView,
                builder: (context, authView) {
                  return authView == AuthView.login
                      ? const LoginForm()
                      : const SignupForm();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
