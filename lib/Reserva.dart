import 'package:flutter/material.dart';
import 'package:turismo/Home.dart';

class Reserva extends StatefulWidget {
  @override
  State<Reserva> createState() => _ReservaState();
}

class _ReservaState extends State<Reserva> {
  bool receberNotificacoes = false;
  double quantidadePessoas = 1;
  bool incluirAlimentacao = false;
  bool acessoVip = false;
  bool seguroAtividades = false;
  String metodoPagamento = "Cartão de Crédito";
  TextEditingController nomeController = TextEditingController();
  TextEditingController cpfController = TextEditingController();

  void _finalizarReserva() {
    if (nomeController.text.isEmpty || cpfController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Preencha seu nome e CPF!")),
      );
      return;
    }

    print("=== Detalhes da Reserva ===");
    print("Nome: ${nomeController.text}");
    print("CPF: ${cpfController.text}");
    print("Quantidade de Pessoas: ${quantidadePessoas.toInt()}");
    print("Receber Notificações: ${receberNotificacoes ? 'Sim' : 'Não'}");
    print("Opções Adicionais:");
    print(" - Alimentação: ${incluirAlimentacao ? 'Sim' : 'Não'}");
    print(" - Acesso VIP: ${acessoVip ? 'Sim' : 'Não'}");
    print(" - Seguro de Atividades: ${seguroAtividades ? 'Sim' : 'Não'}");
    print("Forma de Pagamento: $metodoPagamento");
    print("===========================");

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Home()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reserva'),
        backgroundColor: Color(0xFF6750A4),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Nome:", style: TextStyle(fontSize: 16)),
              TextField(controller: nomeController),

              Padding(padding: EdgeInsets.only(top: 10)),
              Text("CPF:", style: TextStyle(fontSize: 16)),
              TextField(controller: cpfController),

              Padding(padding: EdgeInsets.only(top: 40)),
              Text("Quantidade de Pessoas: ${quantidadePessoas.toInt()}"),
              Slider(
                value: quantidadePessoas,
                min: 1,
                max: 10,
                divisions: 9,
                label: quantidadePessoas.toInt().toString(),
                onChanged: (value) {
                  setState(() {
                    quantidadePessoas = value;
                  });
                },
              ),

              Padding(padding: EdgeInsets.only(top: 20)),
              SwitchListTile(
                title: Text("Receber notificações"),
                value: receberNotificacoes,
                onChanged: (value) {
                  setState(() {
                    receberNotificacoes = value;
                  });
                },
              ),

              Padding(padding: EdgeInsets.only(top: 20)),
              Text("Opções adicionais:", style: TextStyle(fontSize: 16)),
              CheckboxListTile(
                title: Text("Incluir Alimentação"),
                subtitle: Text("Adicione refeição no pacote"),
                value: incluirAlimentacao,
                onChanged: (value) {
                  setState(() {
                    incluirAlimentacao = value!;
                  });
                },
              ),
              CheckboxListTile(
                title: Text("Acesso VIP"),
                subtitle: Text("Evite filas e tenha benefícios extras"),
                value: acessoVip,
                onChanged: (value) {
                  setState(() {
                    acessoVip = value!;
                  });
                },
              ),
              CheckboxListTile(
                title: Text("Seguro de Atividades"),
                subtitle: Text("Cobertura contra acidentes"),
                value: seguroAtividades,
                onChanged: (value) {
                  setState(() {
                    seguroAtividades = value!;
                  });
                },
              ),

              Padding(padding: EdgeInsets.only(top: 20)),
              Text("Forma de Pagamento:", style: TextStyle(fontSize: 16)),
              Column(
                children: [
                  RadioListTile(
                    title: Text("Cartão de Crédito"),
                    value: "Cartão de Crédito",
                    groupValue: metodoPagamento,
                    onChanged: (value) {
                      setState(() {
                        metodoPagamento = value.toString();
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text("Pix"),
                    value: "Pix",
                    groupValue: metodoPagamento,
                    onChanged: (value) {
                      setState(() {
                        metodoPagamento = value.toString();
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text("Boleto"),
                    value: "Boleto",
                    groupValue: metodoPagamento,
                    onChanged: (value) {
                      setState(() {
                        metodoPagamento = value.toString();
                      });
                    },
                  ),
                ],
              ),

              Padding(padding: EdgeInsets.only(top: 20)),
              Center(
                child: ElevatedButton(
                  onPressed: _finalizarReserva,
                  child: Text("Finalizar Reserva"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}