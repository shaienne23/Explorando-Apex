@RestResource(urlMapping='/Escola')
global with sharing class EscolaREST {
    @httpGet
    global Static List<Escola__c> getEscolas(){
        return [SELECT Id, Name, Idioma__c, Valor_Semana_General__c, Valor_Semana_Part_Time__c FROM Escola__c];
    }

    @httpPost
    global static Escola__c insertEscola(Escola__c escola){
        //TODO: Aqui podemos adicionar outras  operações
        insert escola;
        return escola;
    }

    @httpPut
    global static Escola__c upsertEscola(Escola__c escola){
         //TODO: Aqui podemos adicionar outras  operações
         upsert escola;
         return escola;

    }
}