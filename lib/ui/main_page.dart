import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:atlantis/blocs/main_bloc.dart';
import 'package:atlantis/ui/pages.dart';

class MainPage extends StatefulWidget {
  final String s;
  MainPage(this.s, {Key key}) : super(key: key) {
    print("Bienvenido");
  }

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => MainBloc(),
      child: Scaffold(
        body: Container(
          alignment: AlignmentDirectional.centerStart,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 80,
                ),
                Center(
                    child: Text(
                  "Bienvenido " + super.widget.s,
                  style: TextStyle(
                    //color: Colors.red,
                    fontSize: 25,
                  ),
                )),
                FlatButton(
                  child: Text('LogOut',
                      style: TextStyle(color: Colors.red, fontSize: 15)),
                  onPressed: () {
                    SystemNavigator.pop();
                  },
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Container(
                            height: 230.0,
                            child: RaisedButton(
                              color: Color.fromRGBO(0, 188, 212, 1),
                              elevation: 0.0,
                              child: Text(
                                "D E S C A R G A",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, '/descarga');
                              },
                            ),
                          )),
                    ),
                    Expanded(
                      child: Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Container(
                            // width: 260.0,
                            height: 230.0,
                            child: RaisedButton(
                              // shape: RoundedRectangleBorder(
                              //     borderRadius: BorderRadius.circular(20)),
                              color: Color.fromRGBO(102, 255, 153, 1),
                              elevation: 0.0,
                              child: Text(
                                "C A R G A",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                              onPressed: () {
                                Navigator.pushNamed(context, '/carga');
                              },
                            ),
                          )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: EdgeInsets.all(0.0),
                  child: Image.asset('images/containers.png'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
