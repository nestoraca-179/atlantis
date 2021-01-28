part of 'descargamenu_bloc.dart';

abstract class DescargamenuState extends Equatable {
  const DescargamenuState();

  @override
  List<Object> get props => [];
}

class DescargamenuInitial extends DescargamenuState {
  DescargamenuInitial() {
    print("Desplegar menu");
  }
}
