public with sharing class SoslClass {
    public SoslClass() {
        // O SOQL é usado quando você sabe onde e o que buscar. 
        // Já o SOSL é usado quando você precisa buscar em todos os campos no Salesforce.
        List<List<SObject>> resultados = [FIND 'Teste' IN ALL FIELDS RETURNING Account(Name), Contact(Name), Lead(Name)];
        
        // Para mostrar os resultados de cada objeto separado
        List<Account> contas = (List<Account>)resultados[0];
        List<Contact> contatos = (List<Contact>)resultados[1];
        List<Lead> leads = (List<Lead>)resultados[2];
        
        // Imprimir os resultados de cada lista
        for (Account conta : contas) {
            System.debug('Conta: ' + conta.Name);
        }
        for (Contact contato : contatos) {
            System.debug('Contato: ' + contato.Name);
        }
        for (Lead lead : leads) {
            System.debug('Lead: ' + lead.Name);
        }
    }
}
