import 'package:bloc/bloc.dart';
import 'package:bwa_pesawats/models/user_data.dart';
import 'package:bwa_pesawats/services/auth_services.dart';
import 'package:bwa_pesawats/services/user_services.dart';
import 'package:equatable/equatable.dart';

part 'auths_state.dart';

class AuthsCubit extends Cubit<AuthsState> {
  AuthsCubit() : super(AuthsInitial());

  void signUpUser({
    required String email,
    required String password,
    required String name,
    String hobby = '',
  }) async {
    try {
      emit(AuthsLoading());

      UserModel usermodel = await AuthServices().signUpRequest(
          email: email, password: password, name: name, hobby: hobby);

      emit(AuthsSuccess(usermodel));
    } catch (err) {
      emit(AuthsFailed(err.toString()));
    }
  }

  void signOutUser() async {
    try {
      emit(AuthsLoading());
      await AuthServices().signOutRequest();
      emit(AuthsInitial());
    } catch (err) {
      emit(AuthsFailed(err.toString()));
    }
  }

  void signInUser({
    required String email,
    required String password,
  }) {}

  void getCurrentUser(String id) async {
    try {
      emit(AuthsLoading());
      UserModel usermodel = await UserServices().getUserById(id);
      emit(AuthsSuccess(usermodel));
    } catch (err) {
      emit(AuthsFailed(err.toString()));
    }
  }
}
