import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:atlantis/models/models.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial());

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    if (event is LoginPressedButton) {
      try {
        yield LoginLoading();
        await Future.delayed(Duration(seconds: 1));
        if (event.user.email.toLowerCase().trim() != 'x' ||
            event.user.getPassword.trim() != '123') {
          yield LoginErrorAutentificacion();
        } else {
          yield LoginAutenticado(event.user);
        }
      } catch (e) {
        print(e);
      }
    }
  }
}
