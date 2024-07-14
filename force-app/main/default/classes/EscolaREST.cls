@RestResource(urlMapping='/Escola')
global with sharing class EscolaREST {
    @httpGet
    global Static List<Escola__c> getEscolas(){
        return [SELECT Id, Name, Idioma__c, Valor_Semana_General__c, Valor_Semana_Part_Time__c FROM Escola__c];
    }

    @httpPost
    global static Escola__c insertEscola(Escola__c escola){
        insert escola;
        return escola;
    }
}