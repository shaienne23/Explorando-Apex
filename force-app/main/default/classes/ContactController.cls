public with sharing class ContactController {
        @AuraEnabled(cacheable=true)
        public static List<Contact> getContacts() {
            try {
                return [SELECT Id, Name, Title FROM Contact LIMIT 3];
            } catch (Exception e) {
                throw new AuraHandledException(e.getMessage());
            }
        }
}