import 'package:flutter_application_1/27032025/sintaxe/cidade.dart';
import 'package:flutter_application_1/27032025/sintaxe/estado.dart';
import 'package:flutter_application_1/27032025/sintaxe/pessoa.dart';

void main() {
  var estado1 = Estado(nome: "Paraná", sigla: 'PR');
  var cidade1 = Cidade(nome: 'Paranavaí', estado: estado1);
  var pessoa1 = Pessoa(nome: 'Igor', peso: 90.0, altura: 1.80, cidade: cidade1);

  Pessoa(
      nome: 'Joaquim',
      altura: 1.70,
      peso: 130.0,
      cidade: Cidade(
          nome: 'Paranavaí', estado: Estado(nome: 'Paraná', sigla: 'PR')));
}
