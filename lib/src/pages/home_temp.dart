import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components Temp'),
      ),
      body: ListView(children: _crearItems2()
          //children: _crearItems()
          ),
    );
  }

  // List<Widget> _crearItems() {
  //   List<Widget> lista = new List<Widget>();

  //   for (String element in opciones) {
  //     final tempWidget = ListTile(
  //       title: Text(element),
  //     );
  //     lista
  //       ..add(tempWidget)
  //       ..add(Divider(
  //         color: Color(0xFF0679F3),
  //       ));
  //   }

  //   return lista;
  // }

  List<Widget> _crearItems2() {
    return opciones.map((element) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(element + '!'),
            subtitle: Text('this is the subtitle'),
            leading: Icon(Icons.account_circle),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {},
          ),
          Divider(color: Color(0xFF0679F3))
        ],
      );
    }).toList();
  }
}
