import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'descargamenu_event.dart';
part 'descargamenu_state.dart';

class DescargamenuBloc extends Bloc<DescargamenuEvent, DescargamenuState> {
  DescargamenuBloc() : super(DescargamenuInitial());

  @override
  Stream<DescargamenuState> mapEventToState(
    DescargamenuEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
