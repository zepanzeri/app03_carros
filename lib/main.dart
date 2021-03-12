import 'package:app03_carros/CarroWidget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Carros',
      home: TelaPrincipal(),
    ),
  );
}

class TelaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carros'),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          CarroWidget('Audi', 'Q8', 'lib/images/audi_q8.jpg'),
          CarroWidget('Audi', 'R8', 'lib/images/audi_r8.jpg'),
          CarroWidget('BMW', 'M2', 'lib/images/bmw_m2.jpg'),
          CarroWidget('Ferrari', '488', 'lib/images/ferrari_488.jpg'),
          CarroWidget(
              'Lamborghini', 'Huracan', 'lib/images/lamborguini_huracan.jpg'),
          CarroWidget('Lamborghini', 'Urus', 'lib/images/lamborguini_urus.jpg'),
          CarroWidget('Maserati', 'GTS', 'lib/images/maserati_gts.jpg'),
        ]),
      ),
    );
  }
}
