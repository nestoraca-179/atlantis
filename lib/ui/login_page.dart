import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:atlantis/blocs/login_bloc.dart';
import 'package:atlantis/models/models.dart';
//import 'package:atlantis/repositories/repository.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  final String title = 'Atlantis Mobile';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final _controllerEmail = TextEditingController();
    final _controllerPassword = TextEditingController();
    final loginBloc = BlocProvider.of<LoginBloc>(context);

    return BlocProvider(
        create: (BuildContext context) => LoginBloc(),
        child: Scaffold(
            body: Container(
          alignment: AlignmentDirectional.centerStart,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Form(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(100.0),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Image.asset('images/AtlantisIcono.png'),
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'e-mail'),
                    controller: _controllerEmail,
                    keyboardType: TextInputType.emailAddress,
                    autocorrect: false,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Email requerido.';
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: 'password'),
                    obscureText: true,
                    controller: _controllerPassword,
                    validator: (value) {
                      if (value == null) {
                        return 'Password requerido.';
                      }
                      return null;
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.all(50.0),
                    child: RaisedButton(
                      color: Color.fromRGBO(102, 255, 153, 1),
                      elevation: 5.0,
                      child: Text(
                        'Acceder',
                      ),
                      onPressed: () {
                        User user = User();
                        user.email = _controllerEmail.text;
                        user.setPassword = _controllerPassword.text;
                        user.name = "Antonio";
                        loginBloc.add(LoginPressedButton(user));
                      },
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  if (loginBloc.state is LoginErrorAutentificacion)
                    Center(
                        child: Text(
                      "Error de autenticacion",
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 18,
                      ),
                    ))
                ],
              ),
            ),
          ),
        )));
  }
}
