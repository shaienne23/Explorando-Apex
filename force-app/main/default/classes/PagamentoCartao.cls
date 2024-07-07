public with sharing class PagamentoCartao implements IPagamento {
  

    public Decimal cobrar(Decimal valorCompra, Decimal valorPago){
        //Regra de negocio como chamar op cartao.
        return valorPago - valorCompra;
    }
}