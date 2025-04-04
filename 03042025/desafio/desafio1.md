Crie um objeto de Venda que englobe um Cliente cujo endereço possui hierarquia completa (Endereço → Cidade → Estado → País). O produto vendido deve estar associado a um Fornecedor com sua própria hierarquia de endereço. Utilize funções anônimas para:
- Calcular um imposto dinâmico com base no valor do produto.
- Concluir a venda com uma função que valide todas as associações.

```
void main(){
    var venda = Venda(
        cliente: Cliente(
            nome: 'Igor',
            cpf: '32183715213'
            endereco: Endereco(
                logradouro: 'Rua São João',
                numero: '109',
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
            )
        ),
        produto: Produto(
            nome: 'Mamão',
            preco: 1.99,
            fornecedor: Fornecedor(
                nome:
                cnpj:
                endereco: Endereco(
                    logradouro: 'Campos Verdes',
                    numero: '195',
                    cidade: Cidade(
                        nome: 'Paranavaí',
                        estado: Estado(
                            nome: 'Paraná',
                            pais: Pais(
                                nome: 'Brasil',
                                sigla: 'BR'
                            )
                        )
                    )
                )                
            )
        ),
        calcularImposto: (){
            print('Imposto calculado!');
        },
        concluirVenda: (){
            print('Venda concluída!')
        }
    );
}
```