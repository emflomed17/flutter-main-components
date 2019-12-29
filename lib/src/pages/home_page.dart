import 'package:components/src/providers/menu_provider.dart';
import 'package:components/src/utils/icon_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    //menuProvider.loadData();
    return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: [], //optional
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        //print(snapshot.data);
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];

    data.forEach((element) {
      final widgetTemp = ListTile(
        title: Text(element['texto']),
        leading: getIcon(element['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {
          Navigator.pushNamed(context, element['ruta']);

          // final route = MaterialPageRoute(builder: (context) {
          //   return AlertPage();
          // });
          // Navigator.push(context, route);
        },
      );

      opciones..add(widgetTemp)..add(Divider());
    });

    return opciones;
  }
}
