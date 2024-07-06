public class TemperaturaConverter {
// pega um temperatura Fahrennheit e retornar celsius
    public static Decimal FahrenheitToCelsius(Decimal fh){
        decimal cs = (fh - 32) * 5/9;
        return cs.setscale(2);
    }
}