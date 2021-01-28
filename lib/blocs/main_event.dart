part of 'main_bloc.dart';

abstract class MainEvent extends Equatable {
  const MainEvent();

  @override
  List<Object> get props => [];
}

class MainPressedDescarga extends MainEvent {

  MainPressedDescarga() {
     print("Descarga");
  }
   

  @override
  List<Object> get props => [];
}
