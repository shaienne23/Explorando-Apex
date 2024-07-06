trigger TriggerOpportunity on Opportunity (before insert, before update) {
    for(Opportunity opportunity : Trigger.new){
        opportunity.Amount = 0;
        opportunity.CloseDate = System.today().addDays(15);
        
        if(opportunity.StageName == 'Closed Lost' && String.isBlank(opportunity.Motivo_da_Perda__c)){
            opportunity.addError('O campo Motivo da Perda deve estar preenchido');
        }
        if(opportunity.Amount >= 100000 && opportunity.Amount <= 200000 ){
            opportunity.StageName = 'value proposition';
        }else{
            opportunity.StageName = 'prospecting';
        }
    }
}