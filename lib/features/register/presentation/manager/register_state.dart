part of 'register_cubit.dart';

@immutable
abstract class RegisterState {}

class RegisterInitial extends RegisterState {}

class SignUpLoadingState extends RegisterState {}

class SignUpLoadedState extends RegisterState {
  final String message;

  SignUpLoadedState({required this.message});

}

class SignUpErrState extends RegisterState {
  final String message;

  SignUpErrState({required this.message});

}