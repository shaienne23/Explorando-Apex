@isTest
private class TriggerLeadTest {  
    @isTest
    static void testePositivo(){
        Lead lead = new Lead(FirstName='Shay', LastName='Oli', Phone='12345678', 
                             Company='DBC');
        insert lead;
        
        List<Lead> leads = [SELECT Fax, Website, AnnualRevenue FROM Lead WHERE Id =:lead.id];
            
            Lead leadRecebido = leads[0];
        
        System.assertEquals('(XX) XXXXX - XXXX', leadRecebido.Fax);
        System.assertEquals('www.example.com', leadRecebido.Website);
        System.assertEquals(0, leadRecebido.AnnualRevenue);
    }
    
   /* @isTest
    static void testeNegativo(){
        Lead lead = new Lead(FirstName='Shay', LastName='Oli', Phone='12345678', 
                             Company='DBC', Fax='(11) 11111 - XXXX', Website='https.teste.com', AnnualRevenue = 12);
        insert lead;
        
        List<Lead> leads = [SELECT Fax, Website, AnnualRevenue FROM Lead WHERE Id =:lead.id];
            
            Lead leadRecebido = leads[0];
        
        System.assertNotEquals('(XX) XXXXX - XXXX', leadRecebido.Fax);
        System.assertNotEquals('www.example.com', leadRecebido.Website);
        System.assertNotEquals(0, leadRecebido.AnnualRevenue);
    }*/
}