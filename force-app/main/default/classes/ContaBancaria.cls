public class ContaBancaria {
	public Integer numeroDaConta;
    public String titular;
    public Decimal deposito;
    public Decimal saque;
    public Decimal saldoInicial;
    public Decimal saldo;
    public Decimal taxaDeJurosMes;
    public Integer quantidadeMeses;
    
    
      public Decimal depositarDinheiro(Decimal deposito) {
     	saldo = saldoInicial + deposito;
        return saldo;
    }
    
    public Decimal sacarDinheiro(Decimal saque) {
        saldo -= saque;
        return saldo;
    }
    public Decimal calculoJurosPeriodo(Decimal taxaDeJurosMes, Integer quantidadeMeses){
        return taxaDeJurosMes * quantidadeMeses;
    }
    
    public void imprimir(Decimal saldoAposDeposito,Decimal saldoAposSaque,Decimal jurosCalculadoPeriodo){
        System.debug('O numero da conta é: ' + numeroDaConta);
        System.debug('O titular da conta é: ' + titular);
        System.debug('O valor do saldo Inicial: ' + saldoInicial);
        System.debug('O valor do saldo Final apos transações: ' + saldo);
        System.debug('O valor do déposito: ' + deposito);
        System.debug('O valor do saldo após déposito: ' + saldoAposDeposito);
        System.debug('O valor do saque: ' + saque);
        System.debug('O valor do saldo após saque: ' + saldoAposSaque);
        System.debug('O valor da taxa de Juros por mês: ' + taxaDeJurosMes);
        System.debug('A quantidade de meses para calculo de juros é: ' + quantidadeMeses);
        System.debug('O valor da taxa de Juros por periodo informado: ' + jurosCalculadoPeriodo);

    }
}