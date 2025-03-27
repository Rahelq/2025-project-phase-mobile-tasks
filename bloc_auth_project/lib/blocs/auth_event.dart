import 'package:equatable/equatable.dart';

abstract class AuthEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class TogglePasswordVisibility extends AuthEvent {}

class UpdateEmail extends AuthEvent {
  final String email;
  UpdateEmail(this.email);

  @override
  List<Object?> get props => [email];
}

class UpdatePassword extends AuthEvent {
  final String password;
  UpdatePassword(this.password);

  @override
  List<Object?> get props => [password];
}
