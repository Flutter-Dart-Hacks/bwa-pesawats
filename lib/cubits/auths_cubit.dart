import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'auths_state.dart';

class AuthsCubit extends Cubit<AuthsState> {
  AuthsCubit() : super(AuthsInitial());
}
