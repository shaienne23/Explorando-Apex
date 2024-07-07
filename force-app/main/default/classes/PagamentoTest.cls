@isTest
public class PagamentoTest {
    
    @isTest static void pagamentoCartao(){
        PagamentoCartao pc = new PagamentoCartao();
        Decimal troco = pc.cobrar(100, 100);

        System.assertEquals(0, troco, 'O troco esperado deve ser zero');
    }   
  }