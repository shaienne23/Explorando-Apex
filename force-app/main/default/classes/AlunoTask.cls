public class AlunoTask {
	public Integer idAluno;
    public String nome;
    public List<Decimal>notas;
    
     public AlunoTask(Integer idAluno, String nome) {
        this.idAluno = idAluno;
        this.nome = nome;
        this.notas = new List<Decimal>();
    }
      public Decimal calcularMedia() {
        Decimal soma = 0;
        for (Decimal nota : notas) {
            soma += nota;
        }
        if (notas.size() > 0) {
            return soma / notas.size();
        } else {
            return 0;
        }
    }
    
}