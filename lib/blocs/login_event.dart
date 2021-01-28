part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  //const LoginEvent();
  LoginEvent();
}

class LoginPressedButton extends LoginEvent {
  final User user;

  LoginPressedButton(this.user) {
    print('Acceder ${user}');
  }

  @override
  List<Object> get props => [user];
}