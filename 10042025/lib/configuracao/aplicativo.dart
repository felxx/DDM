import 'package:flutter/material.dart';
import 'package:flutter_application_1/configuracao/rotas.dart';
import 'package:flutter_application_1/widget/widget_categoria.dart';
import 'package:flutter_application_1/widget/widget_cidade.dart';
import 'package:flutter_application_1/widget/widget_estado.dart';
import 'package:flutter_application_1/widget/widget_menu.dart';
import 'package:flutter_application_1/widget/widget_pessoa.dart';
import 'package:flutter_application_1/widget/widget_produto.dart';

class Aplicativo extends StatelessWidget {

  
  const Aplicativo({key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      initialRoute: Rotas.home,
      routes: {
        Rotas.home: (context) => const WidgetMenu(),
        Rotas.categorias: (context) => const WidgetCategoria(),
        Rotas.pessoa: (context) => const WidgetPessoa(),
        Rotas.produto: (context) => const WidgetProduto(),
        Rotas.estado: (context) => const WidgetEstado(),
        Rotas.cidade: (context) => const WidgetCidade()
      },
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
    );
  }
}
