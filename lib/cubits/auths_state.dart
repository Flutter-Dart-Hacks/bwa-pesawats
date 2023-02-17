part of 'auths_cubit.dart';

abstract class AuthsState extends Equatable {
  const AuthsState();

  @override
  List<Object> get props => [];
}

class AuthsInitial extends AuthsState {}

class AuthsLoading extends AuthsState {}

class AuthsSuccess extends AuthsState {}

class AuthsFailed extends AuthsState {}
