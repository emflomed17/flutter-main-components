import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;
  bool _blockCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _checkbox(),
            _crearSwitch(),
            Expanded(child: _crearImagen()),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Image Size',
      //divisions: 20,
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      onChanged: (_blockCheck)
          ? null
          : (valor) {
              setState(() {
                _valorSlider = valor;
              });
            },
    );
  }

  Widget _checkbox() {
    // return Checkbox(
    //   value: _blockCheck,
    //   onChanged: (valor) {
    //     setState(() {
    //       _blockCheck = valor;
    //     });
    //   },
    // );

    return CheckboxListTile(
      title: Text('Bloquear Slider'),
      value: _blockCheck,
      onChanged: (valor) {
        setState(() {
          _blockCheck = valor;
        });
      },
    );
  }

  Widget _crearSwitch() {
    return SwitchListTile(
      title: Text('Bloquear Slider'),
      value: _blockCheck,
      onChanged: (valor) {
        setState(() {
          _blockCheck = valor;
        });
      },
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://a3.espncdn.com/combiner/i?img=%2Fi%2Fteamlogos%2Fsoccer%2F500%2F360.png'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }
}
