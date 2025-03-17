import 'package:flutter/material.dart';
import 'package:turismo/Camping.dart';
import 'package:turismo/Kart.dart';
import 'package:turismo/ParqueAquatico.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void _abrirParqueAquatico() {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ParqueAquatico())
    );
  }

  void _abrirKart() {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Kart())
    );
  }

  void _abrirCamping() {
    Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Camping())
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Página Principal'),
        backgroundColor: Color(0xFF6750A4),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 14)),
              // Primeiro item
              GestureDetector(
                onTap: _abrirKart,
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: Row(
                    children: [
                      Image.asset('images/kart.jpg', width: 130),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Corrida de Kart',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Aventura de alta velocidade em pistas emocionantes para todas as idades.',
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF71797E),
                              ),
                              overflow: TextOverflow.ellipsis, // Evita o overflow
                              maxLines: 2, // Limita a descrição a 2 linhas
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 24)),

              // Segundo item
              GestureDetector(
                onTap: _abrirParqueAquatico,
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: Row(
                    children: [
                      Image.asset('images/parque_aquatico.jpg', width: 130),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Parque Aquático',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Diversão garantida com tobogãs, piscinas e muito mais para a família toda.',
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF71797E),
                              ),
                              overflow: TextOverflow.ellipsis, // Evita o overflow
                              maxLines: 2, // Limita a descrição a 2 linhas
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 24)),

              // Terceiro item
              GestureDetector(
                onTap: _abrirCamping,
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey.shade300),
                  ),
                  child: Row(
                    children: [
                      Image.asset('images/camping.jpg', width: 130),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Camping',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 4),
                            Text(
                              'Uma experiência única de contato com a natureza em um acampamento ao ar livre.',
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF71797E),
                              ),
                              overflow: TextOverflow.ellipsis, // Evita o overflow
                              maxLines: 2, // Limita a descrição a 2 linhas
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}