import 'package:flutter/material.dart';
import 'package:turismo/Reserva.dart';

class ParqueAquatico extends StatefulWidget {
  @override
  State<ParqueAquatico> createState() => _ParqueAquaticoState();
}

class _ParqueAquaticoState extends State<ParqueAquatico> {
  void _abrirReserva() {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Reserva())
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Parque Aquático'),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(14),
        child: Container(
          child: Column(
            children: [
              Image.asset('images/parque_aquatico.jpg'),
              Padding(padding: EdgeInsets.only(top: 16)),
              Text('Parque Aquático', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              Padding(padding: EdgeInsets.only(top: 16)),
              Text(
                'Divirta-se com a família e amigos no nosso parque aquático! Escorregadores emocionantes, piscinas refrescantes'
                ' e muita diversão para todas as idades. Venha viver momentos inesquecíveis e se refrescar no melhor lugar da cidade!',
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
