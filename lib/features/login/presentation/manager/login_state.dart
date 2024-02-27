part of 'login_cubit.dart';

@immutable
abstract class LoginState {}

class LoginInitial extends LoginState {}
class SignInLoadingState extends LoginState {}

class SignInLoadedState extends LoginState {
  final String message;

  SignInLoadedState({required this.message});

}

class SignInErrState extends LoginState {
  final String message;

  SignInErrState({required this.message});

}