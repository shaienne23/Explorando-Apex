@isTest
public class TriggerLeadAnnualTest {
    @isTest private static void testePositivo(){
        Lead lead = new Lead(FirstName='Shay', 
                             LastName='Oli',
                             Phone='12345678', 
                             Company='DBC',
                             Rating = 'Hot',
                            AnnualRevenue = 500001);
        insert lead;
        lead.Rating = 'Cold';
        
       try {
            update lead;
        } catch (DmlException e) {
            System.assertEquals('FIELD_CUSTOM_VALIDATION_EXCEPTION', e.getDmlType(0).name());
            System.assertEquals('Não é permitido alterar a classificação para Cold ou Warm se a receita anual for maior ou igual a 500000.', e.getDmlMessage(0));

        }
        
    }
    @isTest
    private static void testeNegativo() {
        Lead lead = new Lead(
            FirstName = 'John',
            LastName = 'Doe',
            Rating = 'Hot',
            Company = 'DBC',
            AnnualRevenue = 499999
        );
        insert lead;

        lead.Rating = 'Cold';
        update lead;

        Lead updatedLead = [SELECT Id, Rating FROM Lead WHERE Id = :lead.Id];
        
        System.assertEquals('Cold', updatedLead.Rating);
    }
}