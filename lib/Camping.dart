import 'package:flutter/material.dart';
import 'package:turismo/Reserva.dart';

class Camping extends StatefulWidget {
  @override
  State<Camping> createState() => _CampingState();
}

class _CampingState extends State<Camping> {
  void _abrirReserva() {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Reserva())
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Camping'),
        backgroundColor: Color(0xFF6750A4),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(14),
        child: Container(
          child: Column(
            children: [
              Image.asset('images/camping.jpg'),
              Padding(padding: EdgeInsets.only(top: 16)),
              Text('Camping', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              Padding(padding: EdgeInsets.only(top: 16)),
              Text(
                'Desconecte-se da rotina e viva a natureza! Experimente a sensação de acampar em um ambiente tranquilo e rodeado de '
                'belezas naturais. Acomodações confortáveis, atividades ao ar livre e muito mais. Reserve sua aventura de camping agora!',
                textAlign: TextAlign.center,
              ),
              Padding(padding: EdgeInsets.only(top: 16)),
              ElevatedButton(
                  child: Text('RESERVAR'),
                  onPressed: _abrirReserva
              )
            ],
          ),
        ),
      ),
    );
  }
}
