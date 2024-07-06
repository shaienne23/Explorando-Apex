@isTest 
private class CalculadorasTest {
    // testes positivos
    @isTest static void somarTest(){
        Decimal somarValores = Calculadoras.somar(2, 2);
            System.AssertEquals(4, somarValores);
    }
    @isTest static void SubtrairTest(){
        Decimal subtrairValores = Calculadoras.subtrair(2, 2);
        System.AssertEquals(0, subtrairValores);
    }
    @isTest static void dividirTest(){
        Decimal dividirValores = Calculadoras.dividir(10, 2);
        System.assertEquals(5, dividirValores);
    }
    
    @isTest static void dividirPorZeroTest(){
    Decimal resultado = Calculadoras.dividir(10, 0);
    System.assertEquals(null, resultado);
	}

    @isTest static void multiplicarTest(){
       Decimal multiplicarValores = Calculadoras.multiplicar(2, 2);
       System.AssertEquals(4, multiplicarValores);
    }

    // testes Negativos
    @isTest static void somarNTest(){
        Decimal somarValoresN = Calculadoras.somar(2, 2);
        System.AssertEquals(3, somarValoresN);
    }
        @isTest static void SubtrairNTest(){
        Decimal subtrairValores = Calculadoras.subtrair(2, 2);
        System.AssertEquals(2, subtrairValores);
    }
    @isTest static void dividirNTest(){
        Decimal dividirValores = Calculadoras.dividir(10, 2);
        System.assertEquals(3, dividirValores);
    }
    @isTest static void multiplicarNTest(){
       Decimal multiplicarValores = Calculadoras.multiplicar(2, 2);
       System.AssertEquals(5, multiplicarValores);
    }
}