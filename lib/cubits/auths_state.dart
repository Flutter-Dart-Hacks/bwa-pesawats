part of 'auths_cubit.dart';

abstract class AuthsState extends Equatable {
  const AuthsState();

  @override
  List<Object> get props => [];
}

class AuthsInitial extends AuthsState {}

class AuthsLoading extends AuthsState {}

class AuthsSuccess extends AuthsState {
  final UserModel userModel;

  const AuthsSuccess(this.userModel);

  @override
  List<Object> get props => [userModel];

  @override
  bool? get stringify => true;
}

class AuthsFailed extends AuthsState {
  final String errorMessage;

  const AuthsFailed(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];

  @override
  bool? get stringify => true;
}
