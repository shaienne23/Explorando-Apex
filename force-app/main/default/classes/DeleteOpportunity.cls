public class DeleteOpportunity {
    public static void deleteOpp(){
        Opportunity queryDeleteOpp = [SELECT Name FROM Opportunity
                                     WHERE Name = 'Qualificação'
                                     LIMIT 1];
       		 delete queryDeleteOpp;
    }
}