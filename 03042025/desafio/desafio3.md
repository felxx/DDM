Crie um objeto de Empresa que contenha múltiplos Departamentos. Cada Departamento deve incluir vários Funcionarios, onde cada funcionário tem uma função anônima para calcular seu bônus (baseado em seu cargo e salário). Além disso, a empresa deve ter um endereço hierárquico (Endereço → Cidade → Estado → País). Utilize funções anônimas para:
- Calcular a folha de pagamento total da empresa.
- Exibir relatórios de desempenho dos departamentos.

```
void main(){
    var empresa = Empresa(
        departamento: Departamento(
            nome: 'Finança'
            funcionario: Funcionario(
                nome: 'Carlinhos',
                cpf: '1951051233',
                cargo: 'Estagiário',
                salario: 1500.0, 
                calcularBonus: (cargo, salario){
                    print('Seu bônus é: ')
                }
            )
        ),
        endereco: Endereco(
            logradouro: 'Rua Santos Dummont',
            numero: '1093',
            cidade: Cidade(
                nome: 'Paraíso do Norte',
                estado: Estado(
                    nome: 'Paraná',
                    pais: Pais(
                        nome: 'Brasil',
                        sigla: 'BR'
                    )
                )
            )                
        ),
        calcularFolhaPagamento: (){
            print('Folha de pagamento calculada!');
        },
        exibirRelatorios: (){
            print('Exibindo os relatórios...');
        },

    );
}
```