import 'dart:async';

import 'package:atlantis/blocs/Descarga/descargamenu_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


part 'descarga_event.dart';
part 'descarga_state.dart';

class DescargaBloc extends Bloc<DescargaEvent, DescargaState> {
  DescargaBloc() : super(DescargaInitial());

  @override
  Stream<DescargaState> mapEventToState(
    DescargaEvent event,
  ) async* {
    if (state is StateShowMenu) {
      

    }

    // TODO: implement mapEventToState
  }
}
