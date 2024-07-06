trigger TriggerLeadAnnualRevenue on Lead (before insert) {
    for(Lead campoLead : Trigger.new){
        if(campoLead.AnnualRevenue >= 0 && campoLead.AnnualRevenue < 10000 ){
            campoLead.Rating = 'Cold';
        }else if(campoLead.AnnualRevenue >= 10000 && campoLead.AnnualRevenue < 100000){
            campoLead.Rating = 'Warm';
        }else {
            campoLead.Rating = 'Hot';
        }

}
}