

import 'package:bloc/bloc.dart';
import 'package:bloc_pattern/domain/domain.dart';
import 'package:flutter/cupertino.dart';


part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final AuthUseCase _authUseCase;
  UserBloc(this._authUseCase) : super(UserInitial());
  Stream<UserState> mapEventToState(UserEvent event)
  async* {
    if(event is GetUser)
      {
        final result = await _authUseCase.getUsers();
        print(result);
        yield Success(result);
      }
    else{
      String error = 'Not Found Data';
      yield Error(error);
    }
  }
}
