//Pesquisa SOSL com Filtro e Criação de MétodoCrie uma classe Apex chamada AccountSearch 
//com um método chamado searchAccountsByIndustry.
//O método searchAccountsByIndustry deve receber uma string de setor (industry) como parâmetro.
//Dentro do método, execute uma pesquisa SOSL para encontrar contas com o setor especificado.
//Retorne os resultados da pesquisa como uma lista de objetos Account.

public class AccountSearch {
    public List<Account> searchAccountsByIndustry(String searchQuery) {
        List<Account> searchResults = new List<Account>();
        
        List<List<SObject>> searchResultsSOSL = [FIND :searchQuery IN ALL FIELDS RETURNING Account(Name, Industry)];
        for (List<SObject> soslResults : searchResultsSOSL) {
            for (SObject obj : soslResults) {
                searchResults.add((Account)obj);
            }
        }
        
        return searchResults;
    }
    
  public void imprimir(List<Account> searchResults) {
        System.debug('Os resultados da consulta são: ' + searchResults);
        for (Account account : searchResults) {
            System.debug('Nome da Conta: ' + account.Name);
        }
    }
}