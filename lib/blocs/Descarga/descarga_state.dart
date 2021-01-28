part of 'descarga_bloc.dart';

abstract class DescargaState extends Equatable {
  const DescargaState();

  @override
  List<Object> get props => [];
}

class DescargaInitial extends DescargaState {}

class StateShowMenu extends DescargaState {
  StateShowMenu() {
    print("Show Menu");
  }
  @override
  List<Object> get props => throw UnimplementedError();
}

class StateShowOpciones extends DescargaState {
  StateShowOpciones() {
    print("Show Opciones");
  }
  @override
  List<Object> get props => throw UnimplementedError();
}

class StateShowLista extends DescargaState {
  StateShowLista() {
    print("Show Lista");
  }
  @override
  List<Object> get props => throw UnimplementedError();
}

class StateShowPatio extends DescargaState {
  StateShowPatio() {
    print("Show Patio");
  }
  @override
  List<Object> get props => throw UnimplementedError();
}

class StateShowSecuencia extends DescargaState {
  StateShowSecuencia() {
    print("Show Secuencia");
  }
  @override
  List<Object> get props => throw UnimplementedError();
}
