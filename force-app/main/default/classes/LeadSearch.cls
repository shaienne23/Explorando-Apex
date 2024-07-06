//Pesquisa SOSL e Criação de ClasseCrie uma classe Apex chamada LeadSearch
// com um método chamado searchLeads.
//O método searchLeads deve receber uma string de consulta como parâmetro.
//Dentro do método, execute uma pesquisa SOSL para encontrar leads que correspondam à consulta fornecida.
//Retorne os resultados da pesquisa como uma lista de objetos Lead.
public class LeadSearch {
    public List<Lead> searchLeads(String searchQuery) {
        List<Lead> searchResults = new List<Lead>();
        
        List<List<SObject>> searchResultsSOQL = [FIND :searchQuery IN ALL FIELDS RETURNING Lead(FirstName)];
        for (List<SObject> leads : searchResultsSOQL) {
            for (SObject obj : leads) {
                searchResults.add((Lead)obj);
            }
        }
        
        return searchResults;
    }
    
  public void imprimir(List<Lead> searchResults) {
    System.debug('Os resultados da consulta são: ' + searchResults);
    for (Lead lead : searchResults) {
        System.debug('Nome: ' + lead.FirstName);
    }
}


}