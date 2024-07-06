public class OpportunitySearch {
    
    public List<Opportunity> searchOpportunitiesByAmount(Decimal minAmount) {
        List<Opportunity> opportunities = new List<Opportunity>();

        String minAmountString = String.valueOf(minAmount);
        List<List<SObject>> searchResults = [FIND :minAmountString IN ALL FIELDS RETURNING Opportunity(Id, Amount, CloseDate)];
       
        for (List<SObject> soslResults : searchResults) {
            for (SObject obj : soslResults) {
                opportunities.add((Opportunity)obj);
            }
        }
        
        return opportunities;      
    }
    
    public void imprimir(List<Opportunity> opportunities) {
        System.debug('Os resultados da consulta são: ' + opportunities);
        
        for (Opportunity opp : opportunities) {
            System.debug('ID: ' + opp.Id + ', Amount: ' + opp.Amount + ', Close Date: ' + opp.CloseDate);
        }
    }
}