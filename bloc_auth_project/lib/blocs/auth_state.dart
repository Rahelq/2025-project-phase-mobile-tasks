import 'package:equatable/equatable.dart';

class AuthState extends Equatable {
  final bool isPasswordVisible;
  final String email;
  final String password;

  const AuthState({
    this.isPasswordVisible = false,
    this.email = '',
    this.password = '',
  });

  AuthState copyWith({
    bool? isPasswordVisible,
    String? email,
    String? password,
  }) {
    return AuthState(
      isPasswordVisible: isPasswordVisible ?? this.isPasswordVisible,
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  @override
  List<Object?> get props => [isPasswordVisible, email, password];
}
