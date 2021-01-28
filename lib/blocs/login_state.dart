part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  //LoginState();
  const LoginState();
}

class LoginInitial extends LoginState {
  LoginInitial() {
    print(" Usuarios inicial ...");
  }

  @override
  List<Object> get props => [];
}

class LoginLoading extends LoginState {
  LoginLoading() {
    print("Loading.....");
    print('Connect and fecht Data');
  }
  @override
  List<Object> get props => throw UnimplementedError();
}

class LoginAutenticado extends LoginState {
  User user;
  LoginAutenticado(this.user) {
    print("Autenticado $user ");
  }

  @override
  List<Object> get props => throw UnimplementedError();
}

class LoginErrorAutentificacion extends LoginState {
  LoginErrorAutentificacion() {
    print("Error de autentificacion");
  }
  @override
  List<Object> get props => throw UnimplementedError();
}

class LoginNoAtenticado extends LoginState {
  @override
  List<Object> get props => throw UnimplementedError();
}
