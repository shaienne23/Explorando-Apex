public class Livro {
	public Integer IdLivro;
    public String titulo;
    public String autor;
	public Integer copiasDisponiveis;
    public Integer quantDisponivel;
    public Integer quantEmprestada;
    public Integer quantDevolvida;
     
    public Integer emprestarLivro(Integer copiasDisponiveis, Integer quantEmprestada){
        quantDisponivel = copiasDisponiveis - quantEmprestada;
        return quantDisponivel;
    }
      public Integer devolverLivro(Integer quantDevolvida){
        return quantDisponivel += quantDevolvida;
    }
    public void imprimirInformacoes(Integer emprestado, Integer devolvido){
        System.debug('----Informações Livro----');
        System.debug('O id do livro é: ' + idLivro);
        System.debug('O titulo do livro é: ' + titulo);
        System.debug('O autor do livro é: ' + autor);
        System.debug('A quantidade de copias disponiveis são: ' + copiasDisponiveis);
        System.debug('A quantidade emprestada é: ' + quantEmprestada);
        System.debug('A quantidade atualizada após emprestimo é: ' + emprestado);
        System.debug('A quantidade devolvida é: ' + quantDevolvida);
        System.debug('A quantidade atualizada apos as devoluções são: ' + devolvido);
        
    }
}