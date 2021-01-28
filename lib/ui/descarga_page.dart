import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:atlantis/blocs/Descarga/descarga_bloc.dart';
import 'package:atlantis/blocs/Descarga/descargamenu_bloc.dart';

class DescargaPage extends StatefulWidget {
  DescargaPage({Key key}) : super(key: key) {
    print("Pagina Descarga");
  }
  @override
  _DescargaPageState createState() => _DescargaPageState();
}

class _DescargaPageState extends State<DescargaPage> {

  @override
  Widget build(BuildContext context) {
    int _actual = 1;
    print('build descarga');
    return BlocProvider(
        create: (BuildContext context) => DescargaBloc(),
        child: BlocProvider(
            create: (BuildContext context) => DescargamenuBloc(),
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Color.fromRGBO(0, 188, 212, 100),
                //automaticallyImplyLeading: false,
                leading: Builder(builder: (BuildContext context) {
                  return Container(
                    child: DropdownMenu(),
                  );
                  //   onPressed: () {
                  //    DropdownMenu();
                }),
                title: Text('Descarga'),
                centerTitle: true,
                actions: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.more_vert),
                    tooltip: 'Opciones',
                    onPressed: () {
                      DescargaBloc().add(EventPressedButtonOpciones());
                    },
                  ),
                ],
              ),
              body: Container(
                alignment: AlignmentDirectional.centerStart,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/AtlantisIcono.png"),
                  ),
                ),
              ),
              bottomNavigationBar: Theme(
                data: Theme.of(context).copyWith(
                  canvasColor:
                      Color.fromRGBO(0, 188, 212, 100), // Background color
                ),
                child: BottomNavigationBar(
                  selectedItemColor: Colors.yellowAccent,
                  unselectedItemColor: Colors.white,
                  items: const <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      title: Text('Lista'),
                      icon: Icon(Icons.content_paste),
                    ),
                    BottomNavigationBarItem(
                      title: Text('Patio'),
                      icon: Icon(Icons.location_on),
                    ),
                    BottomNavigationBarItem(
                      title: Text('Secuencia'),
                      icon: Icon(Icons.done_all),
                    ),
                  ],
                  onTap: (value) {
                    switch (value) {
                      case 0:
                        {
                          DescargaBloc().add(EventPressedButtonLista());
                        }
                        break;
                      case 1:
                        {
                          DescargaBloc().add(EventPressedButtonPatio());
                        }
                        break;

                      default:
                        {
                          DescargaBloc().add(EventPressedButtonSecuencia());
                        }
                        break;
                    }
                  },
                  currentIndex: _actual,
                ),
              ),
            )));
  }
}

class DropdownMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(0, 188, 212, 100),
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            PopupMenuButton<String>(
              icon: Icon(Icons.menu),
              onSelected: choiceAction,
              itemBuilder: (BuildContext context) {
                return Constants.choices.map((String choice) {
                  return PopupMenuItem<String>(
                    value: choice,
                    child: Text(
                      choice,
                      textAlign: TextAlign.center,
                    ),
                  );
                }).toList();
              },
            ),
          ],
        ));
  }
}

class Constants {
  static const String ItemUno = 'Importar Lista de Descarga';
  static const String ItemDos = 'Importar asignacion de Patio';
  static const String ItemTres = 'Secuencia de Descarga';
  static const String ItemCuarto = 'Sincronizar';
  //static const String ItemSalir = 'Salir';

  static const List<String> choices = <String>[
    ItemUno,
    ItemDos,
    ItemTres,
    ItemCuarto,
  ];
}

void choiceAction(String choice) {
  if (choice == Constants.ItemUno) {
    print('Lista de descarga');
  } else if (choice == Constants.ItemDos) {
    print('Asignacion de Patio');
  } else if (choice == Constants.ItemTres) {
    print('Secuencia de descarga');
  } else if (choice == Constants.ItemCuarto) {
    print('Sincronizar');
  }
}
