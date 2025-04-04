Crie um objeto de PedidoCompra com as seguintes condições:
- O Fornecedor deve ter um endereço completo (incluindo Cidade, Estado e País).
- O Produto deve possuir detalhes como Tipo, Categoria e Unidade de Medida.

Implemente funções anônimas para:
- Calcular o valor do frete com base na distância (simulada) e quantidade.
- Realizar o pagamento, que deve validar o pedido e registrar a data do pagamento.

```
void main(){
    var pedido = PedidoCompra(
        fornecedor: Fornecedor(
            nome: 'GTFoods'
            cnpj: '0954159141419'
            endereco: Endereco(
                logradouro: 'Rua Carolina Bela',
                numero: '901',
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
            tipo: TipoProduto(
                descricao: 'Frango'
            ),
            categoria: CategoriaProduto(
                descricao: 'alimento'
                codigo: 195
            ),
            unidadeMedida: 'kg'
        ),
        calcularFrete: (){
            print('Frete Calculado!');
        },
        realizarPagamento: (){
            LocalDate.now();
            print('Pagamento realizado!');
        }
    );
}
```
