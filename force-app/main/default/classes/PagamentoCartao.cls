public with sharing class PagamentoCartao implements IPagamento {
    public PagamentoCartao(Decimal valorCompra, Decimal valorPago) {
        return valorPago - valorCompra;
    }

    public Decimal cobrar(Decimal valorCompra, Decimal valorPago){
        //Regra de negocio como chamar op cartao.
        return valorPago - valorCompra;
    }
}