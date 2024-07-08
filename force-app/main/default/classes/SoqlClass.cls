public with sharing class SoqlClass {
    public SoqlClass() {
        // Em SOQL, as queries são escritas entre colchetes. Cada vírgula separa as colunas a serem retornadas.
        // O SOQL é usado quando você sabe onde e o que buscar. Já o SOSL é usado quando você precisa buscar em todos os campos no Salesforce.
        List<Account> accounts = [SELECT Id, Name, Type, BillingState 
                                  FROM Account 
                                  WHERE (Type = 'Customer - Channel' OR Type = 'Customer - Direct') 
                                  ORDER BY Name];
        
        // Exemplo de uso dos resultados (por exemplo, imprimir os nomes das contas)
        for (Account acc : accounts) {
            System.debug(acc.Name);
        }
    }
}
