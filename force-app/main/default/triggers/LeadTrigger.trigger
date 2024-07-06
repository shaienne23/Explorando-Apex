// caso o telefone nao seja preenchido , vai aparecer uma mensagem
// erro dizendo preencha o telefone
trigger LeadTrigger on Lead (before insert, before update) {/*
    if(Trigger.isInsert || Trigger.isUpdate){
        // Se a trigger for um insert ou update 
        // executar o trecho do meu codigo
        if(Trigger.IsBefore){
            // validação do meu codigo
            for(Lead itemLead: Trigger.new){
                // pegando o objeto que vamos manipular colocando o nome da variavel 
                // trigger.new para chamar todos os registros que vao ser atualizados nesse momento
                if(itemLead.Phone == null){
                itemLead.addError('Preencha o telefone');
                // estou adicionando o erro caso o meu campo de telefone esteja em branco.
                } 
            }
        }else if(Trigger.isAfter){
            // vai entrar aqui se nao for um insert ou update
            // nao precisa preencher obrigatoriamente
        }
    }*/
}