import 'package:flutter/material.dart';
import 'package:turismo/Reserva.dart';

class Kart extends StatefulWidget {
  @override
  State<Kart> createState() => _KartState();
}

class _KartState extends State<Kart> {
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
        title: Text('Corrida de Kart'),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(14),
        child: Container(
          child: Column(
            children: [
              Image.asset('images/kart.jpg'),
              Padding(padding: EdgeInsets.only(top: 16)),
              Text('Corrida de Kart', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              Padding(padding: EdgeInsets.only(top: 16)),
              Text(
                'Sinta a emoção da velocidade! Participe de uma corrida de kart e desafie seus amigos ou familiares. '
                'Circuito emocionante, karts modernos e muita diversão para todos. Reserve já sua corrida e vença o desafio!',
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
