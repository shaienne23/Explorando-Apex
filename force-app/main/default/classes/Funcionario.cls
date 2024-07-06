public class Funcionario {
	public Integer id;
    public String nome;
    public String cargo;
    public Decimal salario;
    public Decimal valorBonusAnual;

    
    public Decimal calculoBonus(Decimal salario, Decimal valorBonusAnual){
        return salario * valorBonusAnual;
    }
    public Decimal calculoSalarioAtualizado(Decimal salario, Decimal valorBonusAnual){
        return salario + (salario * valorBonusAnual);
    }
    
    public void imprimir(Decimal resultado, Decimal resultadoSalario){
        System.debug('O id do funcionário é: ' + id);
        System.debug('O Nome é: ' + nome);
        System.debug('O cargo é: ' + cargo);
        System.debug('O salário é: ' + salario);
        System.debug('O valor da aliquota do bônus é: ' + valorBonusAnual);
        System.debug('O valor do acréscimo de bônus, baseado no salário é: ' + resultado);
        System.debug('O valor do salário atualizado com bonus é: ' + resultadoSalario);
    }
}