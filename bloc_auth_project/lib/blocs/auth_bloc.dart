import 'package:flutter_bloc/flutter_bloc.dart';
import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState()) {
    on<TogglePasswordVisibility>((event, emit) {
      emit(state.copyWith(isPasswordVisible: !state.isPasswordVisible));
    });

    on<UpdateEmail>((event, emit) {
      emit(state.copyWith(email: event.email));
    });

    on<UpdatePassword>((event, emit) {
      emit(state.copyWith(password: event.password));
    });
  }
}
