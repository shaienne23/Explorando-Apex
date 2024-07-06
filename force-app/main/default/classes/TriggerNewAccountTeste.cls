@isTest
public class TriggerNewAccountTeste {
@isTest
    private static void testePositivo(){
        Account account = new Account(
            Name = 'ApexCorp',
            Industry = 'Technology'
        );

        insert account;

        List<Account> updatedAccounts = [SELECT Id, Rating FROM Account WHERE Id = :account.Id];
        System.assertEquals('Hot', updatedAccounts[0].Rating);
    }
    
    @isTest
    private static void testeNegativo(){
        Account account = new Account(
            Name = 'ApexCorp',
           Industry = '	Agriculture'
           );
        

        insert account;

        List<Account> updatedAccounts = [SELECT Id, Rating FROM Account WHERE Id = :account.Id];
        System.assertNotEquals('Hot', updatedAccounts[0].Rating);
    }
}