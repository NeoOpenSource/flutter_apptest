

import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_apptest/Users.dart';
abstract class HttpState<T> extends Equatable{
  const HttpState();
  int get error => 0 ;

  @override
  List<T> get props => [];
}


class UserEmpty extends HttpState {}

class UserLoading extends HttpState {}

class UserLoaded<User> extends HttpState {
  final User user;
  UserLoaded({@required this.user}) : assert(user != null);
  @override
  List<User> get props => [user];
}

class UserError extends HttpState {}

class UserTest<String> extends HttpState{
  final String text;

  UserTest({@required this.text});
}