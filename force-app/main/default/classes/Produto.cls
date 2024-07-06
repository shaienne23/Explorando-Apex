public class Produto {
	public Integer idProduto;
    public String nomeProduto;
    public Integer quantidadeInicial;
    public Integer quantidadeParaAdicionar;
    public Integer quantidadeVendida;
    public Decimal preco;
     
    public Integer adicionarEstoque(Integer quantidadeInicial, Integer adicionarEstoque){
        return quantidadeInicial + quantidadeParaAdicionar;
    }
    
    public Integer diminuirEstoque(Integer quantidadeFinal, Integer diminuirEstoque){
        return quantidadeFinal - diminuirEstoque;
    }
    
    public Decimal receita(Integer quantidadeVendida, Decimal preco){
        return quantidadeVendida * preco;
    }
	public Integer calcularQuantidadeFinal(){
        Integer quantidadeFinal = quantidadeInicial + quantidadeParaAdicionar - quantidadeVendida;
        return quantidadeFinal;
    }    
    
    public void imprimir(Integer estoqueAdicionado, Integer estoqueBaixado, Decimal valorVendas, Integer quantidadeFinal){
        System.debug('O id do produto é: ' + idProduto);
        System.debug('O Nome do produto é: ' + nomeProduto);
        System.debug('A quantidade inicial é: ' + quantidadeInicial);
        System.debug('A quantidade após adição é: ' + estoqueAdicionado);
        System.debug('A quantidade apos venda é: ' + estoqueBaixado);
        System.debug('A quantidade final é: ' + quantidadeFinal);
        System.debug('A quantidade vendida é: ' + quantidadeVendida);
        System.debug('O valor da receita das vendas é: ' + valorVendas);
    }
}