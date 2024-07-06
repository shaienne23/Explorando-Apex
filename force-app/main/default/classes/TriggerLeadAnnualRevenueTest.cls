@isTest
public class TriggerLeadAnnualRevenueTest {
    @isTest
    static void testeCold(){
        Lead lead = new Lead(FirstName='Shay', LastName='Oliveira', Phone='12345678', 
                             Company='DBC', AnnualRevenue = -5000);
        insert lead;
        
        List<Lead> leads = [SELECT AnnualRevenue, Rating FROM Lead WHERE id =:lead.id];
        Lead leadRetornado = leads[0];
        
        System.assertEquals(lead.AnnualRevenue, leadRetornado.AnnualRevenue);
        System.assertNotEquals('Cold', leadRetornado.Rating);
        
    }
    
      @isTest
    static void testeWarm(){
        Lead lead = new Lead(FirstName='Shay', LastName='Oliveira', Phone='12345678', 
                             Company='DBC');
        insert lead;
        
        List<Lead> leads = [SELECT AnnualRevenue, Rating FROM Lead WHERE id =:lead.id];
        Lead leadRetornado = leads[0];
        
        System.assertEquals(null, leadRetornado.AnnualRevenue);
        System.assertNotEquals('Warm', leadRetornado.Rating);
        
    }
     /* @isTest
    static void testeHot(){
        Lead lead = new Lead(FirstName='Shay', LastName='Oliveira', Phone='12345678', 
                             Company='DBC');
        insert lead;
        
        List<Lead> leads = [SELECT AnnualRevenue, Rating FROM Lead WHERE id =:lead.id];
        Lead leadRetornado = leads[0];
        
        System.assertNotEquals('Hot', leadRetornado.Rating);
        
    }*/

}