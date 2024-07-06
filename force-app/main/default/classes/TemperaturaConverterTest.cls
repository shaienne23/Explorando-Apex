@isTest
//pode utilizar private pois sera usada apenas para o teste dessa classe
private class TemperaturaConverterTest {
    @isTest static void testWarmTemp(){
        decimal celsius = TemperaturaConverter.FahrenheitToCelsius(70);
        //System.AssertEquals(//o resultado esperado, e resultado atual e realiza a comparação)
        System.AssertEquals(21.11, celsius);
    }
}