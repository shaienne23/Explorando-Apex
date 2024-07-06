public class UndeleteContacts {
    public static void undeleteContacts() {
        List<Contact> deletedContacts = [SELECT Id FROM Contact WHERE IsDeleted = true];
        
        // Verifica se há contatos excluídos para recuperar
        if (!deletedContacts.isEmpty()) {
            // Define o status como "Ativo" para cada contato
            for (Contact deletedContact : deletedContacts) {
                deletedContact.Status__c = 'Ativo';
            }
            
            // Tenta restaurar os contatos
            undelete deletedContacts;
            
            System.debug('Contatos recuperados com sucesso e status atualizado para "Ativo".');
        } else {
            System.debug('Nenhum contato excluído encontrado para recuperação.');
        }
    }
}