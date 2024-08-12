public with sharing class TicketsController {
    //Criação de Metodos
    //Metodo que retorna todos os aeroportos cadastrados no banco
    //Recebe o parametro que o usuario digita
    //@AuraEnabled libera visibilidade para LWC ou Aura e cacheable se true permite que guarde a pesquisa em cache no lado do usuario
    @AuraEnabled(cacheable=true)
    public static List<Aeroporto__c> getAeroportos(String search) {
        //utilizando para a busca iniciar com parte da palavra digitada
        search += '%';
        return [SELECT Id, Name, Estado__r.Name, Sigla__c
                FROM Aeroporto__c
                WHERE name LIKE :search OR 
                    Estado__r.Name LIKE :search OR 
                    Sigla__c LIKE :search
                WITH SECURITY_ENFORCED
                ];
    }

// metodo de conversão de data (um parse) do formato americano para o Date do salesforce 2024-12-08
    private static Date dataparse(String dateString) {
        List<String> dt = dateString.split('-');
        Date dtResult = Date.newInstance(Integer.valueOf(dt.get(0)), Integer.valueOf(dt.get(1)), Integer.valueOf(dt.get(2)));
        return dtResult;

}
// metodo para pegar todos os voos, para serem consumidos pelo componente
    @AuraEnabled
    public static String getVoos(String aeroportoOrigem, String aeroportoDestino, String dataPartida, String dataRetorno){
        Date dtPartida = dateParse(dataPartida);
        Date dataRetorno = dateParse(dataRetorno);

        List<Voo__c> voosOrigem = [SELECT Id, Name, Aeroporto_Chegada__r.Sigla__c, Aeroporto_Partida__r.Sigla__c, Valor__c
                                    FROM Voo__c
                                    WHERE Data_Partida__c = :dtPartida AND Aeroporto_Partida__c = :aeroportoOrigem AND Aeroporto_Chegada__c = :aeroportoDestino
                                    WITH SECURITY_ENFORCED];

        List<Voo__c> voosOrigem = [SELECT Id, Name, Aeroporto_Chegada__r.Sigla__c, Aeroporto_Partida__r.Sigla__c, Valor__c
                                    FROM Voo__c
                                    WHERE Data_Partida__c = :dtRetorno AND Aeroporto_Partida__c = :aeroportoDestino AND Aeroporto_Chegada__c = :aeroportoOrigem
                                    WITH SECURITY_ENFORCED];    
                                    
        //Mapa para cruzar possibilidade de voos de ida e de volta na busca de voos
        Map<Voo__c, Voo__c> result = new Map<Voo__c, Voo__c>();
          for (Voo__c vooOrigem : voosOrigem) {
            for (Voo__c vooDestino : voosDestino) {
                result.put(vooOrigem, vooDestino);
            }
          } 
        return JSON.serialize(result);
    }

    //Metodo parta opção de ticket para a conta, retornar o ticket criado
    @AuraEnabled
     public static Ticket__c createTicket(String accountId, String vooIdaId, String vooVoltaId){
        //adicionar nivel de segurança e permissões para usuario criar registro
        if(Schema.SObjectType.Ticket__c.isCreateable()){
        Ticket__c ticket = new Ticket__c();

        if(Schema.SObjectType.Ticket__c.fields.Account__c.isCreateable()){
        ticket.Account__c = accountId;
        }
        if(Schema.SObjectType.Ticket__c.fields.Voo_Ida__c.isCreateable()){
        ticket.Voo_Ida__c = vooIdaId;
        }
        if(Schema.SObjectType.Ticket__c.fields.Voo_Volta__c.isCreateable()){
        ticket.Voo_Volta__c = vooVoltaId;
        }

        insert ticket;
        
        return ticket;
     }else{
        throw new AuraHandledException('Voce nao tem permissão para criar um ticket, contacte seu Administrador!');
     }
    
    }
}