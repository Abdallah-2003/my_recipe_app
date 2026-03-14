part of 'auth_cubit.dart';

sealed class AuthState {}

final class AuthInitial extends AuthState {}

final class SignInLoading extends AuthState {}

final class SignInSuccess extends AuthState {}

final class SignInFailure extends AuthState {
  final String message;
  SignInFailure(this.message);
}

final class SignUpLoading extends AuthState {}

final class SignUpSuccess extends AuthState {}

final class SignUpFailure extends AuthState {
  final String message;
  SignUpFailure(this.message);
}


final class LogoutLoading extends AuthState {}

final class LogoutSuccess extends AuthState {}

final class LogoutFailure extends AuthState {
  final String message;
  LogoutFailure(this.message);
}

final class GetUserLoading extends AuthState {}

final class GetUserSuccess extends AuthState {
  final UserModel user;

  GetUserSuccess(this.user);
}

final class GetUserFailure extends AuthState {
  final String message;

  GetUserFailure(this.message);
}