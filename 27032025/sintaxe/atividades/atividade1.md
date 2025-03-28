1. O que significa o uso do operador ? em Dart ao declarar um atributo de uma classe? Explique com um exemplo.
Resposta: permite que o atributo seja nulo quando a classe for instanciada. Por exemplo:

```
// Usando o "?" na hora de criar a classe
class Pessoa{
    String? nome;
}

// Na hora de instanciar, a instância "carro1" não terá erro.
var carro1 = Carro();
```

2. No código abaixo, há um erro. Qual é ele? Como corrigir?
Resposta:
```
class Carro {
  String? marca;
  int? ano;
}
``` 

3. Complete a implementação da classe Produto, garantindo que seus atributos (nome e preco) possam ser nulos:
Resposta:
```
class Produto {
  String? nome;
  double? preco;
}
```

4. Modifique o código abaixo para garantir que, se nenhuma entrada for fornecida, os atributos recebam um valor padrão:
Resposta:
```
import 'dart:io';

void main() {
  Produto produto = Produto();
  print('Digite o nome do produto:');
  produto.nome = stdin.readLineSync();
  print('Digite o preço do produto:');
  produto.preco = double.tryParse(stdin.readLineSync() ?? '0');
  print('Produto: ${produto.nome}, Preço: ${produto.preco}');
}
class Produto {
  String? nome = '';
  double? preco = '';
```

5. Explique a diferença entre ? e late na declaração de atributos em Dart.
Resposta: O "?" permite que um atributo seja nulo, já o "late" permite que um atributo seja inicializada posteriormente.

6. No código abaixo, o que acontecerá se tentarmos acessar pessoa.idade antes de atribuir um valor? Justifique.
Resposta: teremos um erro de *execução*, pois mesmo que a pessoa tenha sido instanciada, o valor do atributo não foi inserido.

7. Modifique a classe Funcionario abaixo para utilizar late corretamente e evitar problemas de inicialização:
Resposta:
```
class Funcionario {
  late String nome;
  late double salario;
}
```

8. Escreva um construtor para a classe Aluno, garantindo que nome e nota sejam inicializados na criação do objeto.
Resposta:
```
class Aluno {
  String nome;
  double nota;

  Aluno(this.nome, this.nota);
}
```

9. Qual a vantagem de utilizar um construtor em vez de definir atributos com ? ou late?
Resposta: Utilizar um construtor não permite instanciar uma classe sem definir os valores do atributos.

10. Modifique o código abaixo para utilizar parâmetros nomeados no construtor:
Resposta:
```
class Endereco {
  String rua;
  String cidade;
  
  Endereco({this.rua, this.cidade});
}
```

11. O que são métodos get e set em Dart? Para que servem?
Resposta: Os métodos get e set têm a função de retornar e definir o valor de um atributo, respectivamente. No dart, a principal função deles é executar validações na hora de utilizar essas funções.

12. Implemente um getter para a classe Retangulo que calcule a área automaticamente:
Resposta:
```
class Retangulo {
  double largura;
  double altura;
  
  Retangulo(this.largura, this.altura);

  
}
```

13. Modifique a classe abaixo para que o set de idade não permita valores negativos:
Resposta:
```
class Pessoa {
  int _idade;
  
  Pessoa(this.idade);

  set idade(double novaIdade){
    if(novaIdade >=0 ){
        _idade = novaIdade;
    }
  }
}
```

14. Modifique a classe abaixo para que o set de idade não permita valores negativos:
Resposta: Exercício igual ao anterior

15. Crie uma classe ContaBancaria que possua os atributos titular, saldo e um método depositar(double valor). O saldo deve ser alterado apenas pelo método.
Resposta:
```
class ContaBancaria{
    String titular;
    double? saldo;

    contaBancaria({required this.titular});

    depositar(double valor){
        saldo += valor;
    }
}
```

16. Modifique a classe ContaBancaria da questão anterior, adicionando um método sacar(double valor), garantindo que o saldo não fique negativo.
Resposta:
```
class ContaBancaria{
    String titular;
    double? saldo;

    contaBancaria({required this.titular});

    depositar(double valor){
        saldo += valor;
    }
    
    sacar(double valor){
        if(valor > saldo) throw Exception('Valor inválido para saque!');
        saldo -= valor;
    }
}
```

17. Reescreva a classe Carro para utilizar construtores nomeados que permitam criar um carro novo (zeroKm) ou usado (usado com ano definido).
Resposta: 

18. Implemente uma classe Aluno que possua um método que retorne se o aluno está aprovado ou reprovado, considerando a média mínima de 7.
Resposta:
```
class Aluno{
    String nome;
    double nota1;
    double nota2;
    double nota3;

    Aluno({required this.nome, required this.nota1, required this.nota2, required this.nota3});

    retornarAvaliacao(double nota1, double nota2, double nota3){
        if((nota1+nota2+nota3)/3 >= 7){
            print('Aprovado');
        }
        else{
            print('Reprovado');
        }
    }
}
```

19. Crie uma classe Produto que tenha um atributo preco e aplique um desconto fixo de 10% ao chamar um método aplicarDesconto().
Resposta:
```
class Produto{
    double preco;

    Produto({required this.preco});

    aplicarDesconto(double preco){
        this.preco = preco*0.9;
    }
}
```

20. Crie um programa que utilize tudo o que foi aprendido, simulando um sistema de cadastro de pessoas, onde o usuário pode inserir nome, idade e peso, com validação dos dados antes de exibi-los na tela.
Resposta: O programa está na pasta "atividade1ex20"
