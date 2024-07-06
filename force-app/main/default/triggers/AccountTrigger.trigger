trigger AccountTrigger on Account (before insert, before update){/*
	 // faça validação dos dados e se os dados estiverem ok realizar a inserção.
     if(Trigger.isBefore){
        for(Account account : trigger.new){
            if(String.isBlank(account.Type) && Trigger.isInsert){
                account.Type = 'Prospect';
                // Se o campo Tipo estiver em branco durante a inserção, defina-o como 'Prospect'.
            } 
                    //For acessa nova trigger, passa para o if e valida de o campo tipo esta preenchido.
                    ////IsBefore = Antes e IsInsert = Durante a inserção de dados;
                    //todo esse processo tem que acontecer antes do usuario salvar um registro
                    //se o campo do tipo sera preenchido como Prospect
                    
                if(account.AnnualRevenue == null && Trigger.isInsert){
                account.AnnualRevenue = 0;
                // Se a Receita Anual for nula durante a inserção, defina-a como 0.
            } 
            if(String.isBlank(account.Phone) && Trigger.isInsert){
                account.addError('O campo do telefone precisa ser preenchido');
                // Se o campo do telefone estiver em branco durante a inserção, exiba um erro.
            }
            if(account.AnnualRevenue < 0 && Trigger.isUpdate){
                account.addError('O campo receita anual está inválido');
                // Se a Receita Anual for menor que 0 durante a atualização, exiba um erro.
            }
            }
    }   	*/		
}