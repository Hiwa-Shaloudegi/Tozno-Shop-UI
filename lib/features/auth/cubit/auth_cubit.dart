import 'package:flutter_bloc/flutter_bloc.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthState(authView: AuthView.login));

  void changeAuthView({required AuthView authView}) {
    emit(state.copyWith(authView: authView));
  }
}
