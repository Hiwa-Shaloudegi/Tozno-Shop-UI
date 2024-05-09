part of 'auth_cubit.dart';

enum AuthView { login, signup }

class AuthState {
  final AuthView authView;

  AuthState({required this.authView});

  AuthState copyWith({AuthView? authView}) {
    return AuthState(
      authView: authView ?? this.authView,
    );
  }
}
