part of 'user_bloc.dart';

@immutable
abstract class UserState {}

class UserInitial extends UserState {}

class Loading extends UserInitial{}

class Success extends UserInitial{
  final ListUser listUser;
  Success(this.listUser);
}

class Error extends UserInitial{
  final String message;
  Error(this.message);
}