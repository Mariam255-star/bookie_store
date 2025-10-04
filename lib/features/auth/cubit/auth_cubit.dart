import 'package:bookie_store/features/auth/cubit/auth_state.dart';
import 'package:bookie_store/features/auth/models/auth_params.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitialState());

  var formKey = GlobalKey<FormState>();
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();

  register() async{
    emit(AuthLoadingState());
    var params = AuthParams(
      name : nameController.text,
      email : emailController.text,
      password : passwordController.text,
      confirmPassword : confirmPasswordController.text,
    );
  }
}