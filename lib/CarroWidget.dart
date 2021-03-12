import 'package:flutter/material.dart';

class CarroWidget extends StatelessWidget {
  // atributos
  final String marca;
  final String modelo;
  final String foto;

  //construtor
  CarroWidget(this.marca, this.modelo, this.foto);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,

      // margens
      //margin: EdgeInsets.all(50),
      //margin: EdgeInsets.symmetric(horizontal: 50),
      //margin: EdgeInsets.symmetric(vertical: 50),
      margin: EdgeInsets.fromLTRB(20, 20, 20, 0),

      // espaçamento
      padding: EdgeInsets.all(10),

      // bordas
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 2,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        gradient: LinearGradient(
          colors: [
            Colors.blue[300],
            Colors.blue[100],
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Column(
          children: [
            Text(
              marca,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              modelo,
              style: TextStyle(fontSize: 24, fontStyle: FontStyle.italic),
            ),
            Image.asset(foto),
          ],
        ),
      ),
    );
  }
}
