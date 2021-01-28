import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:atlantis/blocs/login_bloc.dart';
import 'package:atlantis/ui/pages.dart';
import 'package:atlantis/models/user.dart';
import 'blocs/main_bloc.dart';

void main() {
  runApp(AtlantisApp());
}

class AtlantisApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => LoginBloc(),
        child: BlocProvider(
          create: (BuildContext context) => MainBloc(),
          child: MaterialApp(
            onGenerateRoute: Router.generateRoute,
            initialRoute: '/',
            title: 'Atlantis',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.blue,
              visualDensity: VisualDensity.adaptivePlatformDensity,
              fontFamily: "Montserrat",
            ),
            home: BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
              if (state is LoginInitial) {
                return LoginPage();
              }
              if (state is LoginLoading) {
                return LoadingPage();
              }
              if (state is LoginAutenticado) {
                return MainPage(capitalize(state.user.name));
              }
              if (state is LoginErrorAutentificacion) {
                return LoginPage();
              }
              return Center(
                  child: CircularProgressIndicator(
                strokeWidth: 8,
              ));
            }),
          ),
        ));
  }

  String capitalize(String string) {
    if (string == null) {
      //throw ArgumentError.notNull('string');
      string = "";
    }
    if (string.isEmpty) {
      return string;
    }
    return string[0].toUpperCase() + string.substring(1);
  }
}

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => AtlantisApp());
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginPage());  
      case '/main':
        return MaterialPageRoute(builder: (_) => MainPage(''));
      case '/descarga':
        return MaterialPageRoute(builder: (_) => DescargaPage());
      case '/carga':
        return MaterialPageRoute(builder: (_) => CargaPage());
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('Ruta no definida para ${settings.name}')),
                ));
    }
  }
}