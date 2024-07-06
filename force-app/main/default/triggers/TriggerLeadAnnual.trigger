trigger TriggerLeadAnnual on Lead (before insert, before update) {
    for( Lead campoLead : Trigger.new){
		if((campoLead.Rating == 'Cold' || campoLead.Rating == 'Warm') && campoLead.AnnualRevenue >= 500000){
          campoLead.addError('Não é permitido alterar a classificação para Cold ou Warm se a receita anual for maior ou igual a 500000.');
      }
   }
}