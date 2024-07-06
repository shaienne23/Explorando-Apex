public class NewOpportunity {
    public static void insertOpportunity(){
       Opportunity opportunity = new Opportunity();
        opportunity.Name = 'Nova Oportunidade';
        opportunity.StageName = 'Prospect';
        opportunity.CloseDate = Date.today();
        
        insert opportunity;       
  }
}