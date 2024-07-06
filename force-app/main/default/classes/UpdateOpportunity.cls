public class UpdateOpportunity {
    public static void updateOpp(){
        Opportunity queryOpp = [SELECT Name FROM Opportunity
                                  WHERE Name = 'Nova Oportunidade'
                                  LIMIT 1];
            queryOpp.Name = 'Qualificação';
        		update queryOpp;
    }
}