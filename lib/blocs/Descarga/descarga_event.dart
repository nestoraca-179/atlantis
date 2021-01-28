part of 'descarga_bloc.dart';

abstract class DescargaEvent extends Equatable {
  const DescargaEvent();

  @override
  List<Object> get props => [];
}

class EventPressedButtonMenu extends DescargaEvent {
  EventPressedButtonMenu() {
    print('Pressed Menu button');
  }
  @override
  List<Object> get props => [];
}

class EventPressedButtonLista extends DescargaEvent {
  EventPressedButtonLista() {
    print('Pressed Lista button');
  }
  @override
  List<Object> get props => [];
}

class EventPressedButtonPatio extends DescargaEvent {
  EventPressedButtonPatio() {
    print('Pressed Patio button');
  }
  @override
  List<Object> get props => [];
}

class EventPressedButtonSecuencia extends DescargaEvent {
  EventPressedButtonSecuencia() {
    print('Pressed Secuencia button');
  }
  @override
  List<Object> get props => [];
}

class EventPressedButtonOpciones extends DescargaEvent {
  EventPressedButtonOpciones() {
    print('Pressed Opciones button');
  }
  @override
  List<Object> get props => [];
}
