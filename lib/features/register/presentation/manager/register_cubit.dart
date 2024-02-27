import 'package:flutter/material.dart';
import 'package:heart/core/helper/auth_helper.dart';
import 'package:heart/core/helper/dio_helper.dart';
import 'package:heart/core/utils/app_strings.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController passConfirm = TextEditingController();
  TextEditingController lenght = TextEditingController();
  TextEditingController height = TextEditingController();
  var key =GlobalKey<FormState>();

   userSignUp() async{
    emit(SignUpLoadingState());
   await DioHelper.postData(url: AppStrings.register, data: {
      'Email': email.text,
      'Password': pass.text,
      'Name': name.text,
      'confirmPassword':passConfirm.text,
      'Height':height.text,
      'Lenght':lenght.text,
    },).then((value) {
      emit(SignUpLoadedState(message: value.data['message']));
    }).catchError((error) {
      print(error);
      emit(SignUpErrState(
        message: error.toString(),
      ));
    });
  }



}
