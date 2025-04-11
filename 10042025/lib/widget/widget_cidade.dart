import 'package:flutter/material.dart';

class WidgetCidade extends StatelessWidget {
  const WidgetCidade({key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Cadastro de Cidades'),
        ),
        body: Form(
          child: Column(children: [
            TextFormField(
                decoration: InputDecoration(
                    labelText: 'Nome:', hintText: 'Informe o nome da cidade.')),
            DropdownButtonFormField<String>(
                decoration:
                    InputDecoration(labelText: const Text('Informe o estado')),
                items: ['Paraná', 'São Paulo'],
                onChanged: () {
                  print('Selecionado!');
                })
          ]),
        ));
  }
}
