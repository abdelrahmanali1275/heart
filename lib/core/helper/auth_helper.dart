import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:heart/core/helper/error/failure.dart';
import 'package:heart/core/utils/app_strings.dart';

class AuthHelper{

 Future<Either<ErrorFailure,String>> signUp(email,name,password,confirmPassword,height,lenght)async{
  try {
    var res=await Dio().post(AppStrings.signUp,data:{
      'Email': email,
      'Name': name,
      'Password': password,
      'confirmPassword':confirmPassword,
      'Height':height,
      'Lenght':lenght,
     },);

    return Right(res.statusMessage.toString());
  }  catch (e) {
    return Left(ErrorFailure(message: e.toString()));
  }
 }
}