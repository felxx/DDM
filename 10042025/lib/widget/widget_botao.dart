import 'package:flutter/material.dart';

class WidgetBotao extends StatelessWidget {
  final String rotulo;
  final String rota;

  WidgetBotao({required this.rota, required this.rotulo});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushNamed(rota);
        },
        child: Text(rotulo));
  }
}
