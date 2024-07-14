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

    @httpPatch
    global static Escola__c updateEscola(Escola__c escola){
        //TODO: Aqui podemos adicionar outras  operações
        update escola;
        return escola;
    }
    
    @httpDelete
    global static Boolean deleteEscola() {
        try{
            Id idEscola = (Id)RestContext.request.params.get('Id');
            Escola__c escolaToDelete = new Escola__c(Id = idEscola);
    
            delete escolaToDelete;
            return true;
        }catch(Exception ex){
            return false;
        }
      
    }
}