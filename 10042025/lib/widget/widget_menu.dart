import 'package:flutter/material.dart';
import 'package:flutter_application_1/configuracao/rotas.dart';
import 'package:flutter_application_1/widget/widget_botao.dart';
import 'package:flutter_application_1/widget/widget_pessoa.dart';

class WidgetMenu extends StatelessWidget {
  const WidgetMenu({key}) : super(key: key);

  Widget criarBotao(BuildContext context, String rotulo, String rota) {
    return ElevatedButton(
        onPressed: () {
          Navigator.of(context).pushNamed(rota);
        },
        child: Text(rotulo));
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      WidgetBotao(rota: Rotas.pessoa, rotulo: 'Pessoas').build(context),
      criarBotao(context, 'Cadastro de Pessoa', Rotas.pessoa),
      criarBotao(context, 'Cadastro de Categorias', Rotas.categorias),
      criarBotao(context, 'Cadastro de Produtos', Rotas.produto),
      criarBotao(context, 'Cadastro de Estados', Rotas.estado),
      criarBotao(context, 'Cadastro de Cidades', Rotas.cidade)
    ]);
  }
}
