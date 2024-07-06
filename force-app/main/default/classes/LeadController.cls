public with sharing class LeadController {
    @AuraEnabled(cacheable=true)
    public static List<Lead> getLeads() {
        try {
            return [SELECT Id, Name, Title FROM Lead LIMIT 5];
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}