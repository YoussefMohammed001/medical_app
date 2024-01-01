
import 'package:flutter/cupertino.dart';
import 'package:medical_app/features/login/data/models/login_request_body.dart';
import 'package:medical_app/features/login/data/repo/login_repo.dart';
import 'package:medical_app/features/login/logic/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loinRepo;
  LoginCubit(this._loinRepo) : super(const LoginState.initial());

   final formKey = GlobalKey<FormState>();
TextEditingController emailEditingController = TextEditingController();
TextEditingController passEditingController = TextEditingController();


  Future<void> emitLoginStates({required LoginRequestBody loginRequestBody}) async {
emit( const LoginState.loading());
final response = await _loinRepo.login(loginRequestBody);
response.when(success: (loginResponse){
  emit(LoginState.success(loginResponse));
}, failure: (error){
  emit(LoginState.failure(error: error.apiErrorModel.message ?? ""));

});


}



}
