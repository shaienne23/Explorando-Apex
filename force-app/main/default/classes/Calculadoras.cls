public class Calculadoras {
    
    public static Decimal somar(Decimal a, Decimal b){
        return a + b;
    }
     public static Decimal subtrair(Decimal a, Decimal b){
        return a - b;
    }
    public static Decimal dividir(Decimal a, Decimal b){
        if (b != 0) {
            return a / b;
        } else {
            System.debug('Erro: Divisão por zero.');
            return null;
        }
    }
    public static Decimal multiplicar(Decimal a, Decimal b){
        return a * b;
    }
    
    public void imprimir(Decimal resultado) {
                System.debug('O resultado da operação é: ' + resultado);
            }
}