import 'package:education_app/src/auth/domain/entities/user.dart';
import 'package:equatable/equatable.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object?> get props => [];
}

class AuthInitial extends AuthState {
  const AuthInitial();
}

class AuthLoading extends AuthState {
  const AuthLoading();
}

class SignedIn extends AuthState {
  const SignedIn(this.user);

  final LocalUser user;

  List<Object> get propos => [];
}

class SignedUp extends AuthState {
  const SignedUp();
}

class ForgotPasswordSent extends AuthState {
  const ForgotPasswordSent();
}

class UserUpdated extends AuthState {
  const UserUpdated();
}

class AuthError extends AuthState {
  const AuthError(this.message);

  final String message;

  @override
  List<String> get props => [message];
}
