import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heart/core/helper/dio_helper.dart';
import 'package:heart/core/utils/app_strings.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  var key =GlobalKey<FormState>();

  userSignIn()async{
emit(SignInLoadingState());
DioHelper.postData(url: AppStrings.signIn, data: {
  "Email":email.text,
  "Password":pass.text,
}).then((value) {
  emit(SignInLoadedState(message: value.statusMessage.toString()));
}).catchError((e){
  emit(SignInErrState(message: e.toString()));
});
  }
}
