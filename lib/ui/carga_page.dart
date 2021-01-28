import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:atlantis/blocs/Descarga/descarga_bloc.dart';
import 'package:atlantis/blocs/Descarga/descargamenu_bloc.dart';

class CargaPage extends StatefulWidget {
  CargaPage({Key key}) : super(key: key) {
    print("Pagina Carga");
  }
  @override
  _CargaPageState createState() => _CargaPageState();
}

class _CargaPageState extends State<CargaPage> {
  @override
  Widget build(BuildContext context) {
    int _actual = 1;
    return BlocProvider(
        create: (BuildContext context) => DescargaBloc(),
        child: BlocProvider(
            create: (BuildContext context) => DescargamenuBloc(),
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Color.fromRGBO(102, 255, 153, 100),
                //automaticallyImplyLeading: false,
                leading: Builder(builder: (BuildContext context) {
                  return Container(
                    child: DropdownMenuCarga(),
                  );
                  //   onPressed: () {
                  //DropdownMenu();
                }),
                title: Text('Carga'),
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
                  canvasColor: Color.fromRGBO(102, 255, 153, 100),
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

class DropdownMenuCarga extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(102, 255, 153, 100),
        body: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            PopupMenuButton<String>(
              icon: Icon(Icons.menu),
              onSelected: choiceActionCarga,
              itemBuilder: (BuildContext context) {
                return ConstantsCarga.choices.map((String choice) {
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

class ConstantsCarga {
  static const String ItemUno = 'Importar Lista de Carga';
  static const String ItemDos = 'Importar ubicacion en Buque';
  static const String ItemTres = 'Secuencia de Carga';
  static const String ItemCuarto = 'Sincronizar';

  static const List<String> choices = <String>[
    ItemUno,
    ItemDos,
    ItemTres,
    ItemCuarto,
    //ItemSalir,
  ];
}

void choiceActionCarga(String choice) {
  if (choice == ConstantsCarga.ItemUno) {
    print('Lista de carga');
  } else if (choice == ConstantsCarga.ItemDos) {
    print('Asignacion de Ubicacion');
  } else if (choice == ConstantsCarga.ItemTres) {
    print('Secuencia de carga');
  } else if (choice == ConstantsCarga.ItemCuarto) {
    print('Sincronizar');
  }
}
