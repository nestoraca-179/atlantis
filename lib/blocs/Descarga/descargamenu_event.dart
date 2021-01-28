part of 'descargamenu_bloc.dart';

abstract class DescargamenuEvent extends Equatable {
  const DescargamenuEvent();

  @override
  List<Object> get props => [];
}

class EventPressedMenu extends DescargamenuEvent {
  EventPressedMenu() {
    print('Pressed Menu');
    
  }
  @override
  List<Object> get props => [];
}
