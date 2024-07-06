@isTest
public class TriggerOpportunityTest {
    // Teste Positivo adicionei duas oportunidades para testes distintos
     @isTest
    static void testePositivo() {
        Opportunity opportunity0 = new Opportunity(
            Name = 'Shay',
            CloseDate = System.today().addDays(15),
            StageName = 'Prospecting',
            Amount =  100010
        );
         Opportunity opportunity1 = new Opportunity(
            Name = 'Shay1',
            CloseDate = System.today(),
            StageName = 'Prospecting',
            Amount =  100001
        );
       insert new List<Opportunity>{opportunity0, opportunity1};
           
		Id oportunidade0Id = opportunity0.Id;
        Id oportunidade1Id = opportunity1.Id;

        opportunity0.Id = oportunidade0Id; 
        opportunity0.StageName = 'Value Proposition';
        opportunity1.Id = oportunidade1Id; 
        opportunity1.StageName = 'Closed Lost';
        opportunity1.motivo_da_perda__c = 'Qualquer um';

        update new List<Opportunity> {opportunity0, opportunity1};

        List<Opportunity> updatedOpps = [
            SELECT Id, StageName, Name, CloseDate, Amount
            FROM Opportunity
            WHERE Id IN (:oportunidade0Id, :oportunidade1Id)
        ];
        

        for (Opportunity opp : updatedOpps) {
            if (opp.Id == oportunidade0Id) {
                System.assertEquals('Value Proposition', opp.StageName);
                System.assertEquals(100010, opp.Amount);
            } else if (opp.Id == oportunidade1Id) {
                System.assertEquals('Closed Lost', opp.StageName);
            } else {
                System.debug('Oportunidade inesperada encontrada: ' + opp.Id);
            }
        }
        }
      

// Teste Negativo
     @isTest
    static void testeNegativo() {

        Opportunity opportunity = new Opportunity(
            Name = 'Shay', 
            CloseDate = System.today(), 
            StageName = 'Prospecting'
        );
        insert opportunity;
        
         opportunity.StageName = 'Closed Lost';
        
        Test.startTest();
        try {
            update opportunity;
            System.assert(false, 'A atualização deveria ter falhado devido à validação');
        } catch (DmlException e) {
            
            // Verifiquei a excessao que estava retornando por nao adicionar o motivo no teste negativo
            System.assertEquals('FIELD_CUSTOM_VALIDATION_EXCEPTION', e.getDmlType(0).name());
            System.assertEquals('O campo Motivo da Perda deve estar preenchido', e.getDmlMessage(0));
        }
        Test.stopTest();
    }
}