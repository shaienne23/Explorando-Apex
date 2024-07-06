public class Pizzaria {
    public String saborPizza;

    public void pedirPizza() {
        switch on saborPizza {
            when 'Calabresa' {
                System.debug('Pizza de Calabresa, valor R$ 45,00');
            }
            when '4 Queijos' {
                System.debug('Pizza 4 Queijos, valor R$ 50,00');
            }
            when 'Maria Bonita' {
                System.debug('Pizza Maria Bonita, valor R$ 60,00');
            }
            when else {
                System.debug('Não possuímos essa Pizza.');
            }
        }
    }


}