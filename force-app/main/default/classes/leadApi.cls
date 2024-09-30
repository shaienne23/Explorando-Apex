//Para que faça o mapeamento de url
@RestResource(urlMapping='/leads/*')

// necessario adicionar 'global' no lugar de public  para que possa ser utilizado por Apis
global with sharing class leadApi {
    
   /* //criando o primeiro metodo get
    @HttpGet
    global static void getLeads(){

        // para mapear a resposta da chamada iremos adicionar um response - norma padrão salesforce
        RestResponse resultRest = RestContext.response;

        // como quero criar uma lista de leads irei ciar um List,  fazendo uma consulta SOQL para retornar os resultados
        List<Lead> leadsList = [SELECT Id, Name, Email, Phone FROM Lead];
        
        // Agora quero retornar o corpo como resposta, e utilizo o Blob.valueOf para retirada de quaisquer caracteres
        // especiais e fazendo tratamento, porem para isso preciso serializa-lo como JSON, e adicionar a lista que ele deve tratar.
        resultRest.responseBody = Blob.valueOf(JSON.serialize(leadsList));

        // necessario setar o status code
        resultRest.statusCode = 200;
    }*/

     // Apenas um método GET é permitido para chamadas API em classes Apex
    @HttpGet
    global static void getLeads() {

        // O RestResponse mapeia a resposta da chamada
        RestResponse resultRest = RestContext.response;

        // O RestRequest captura o que vier na URL da requisição
        RestRequest request = RestContext.request;

        // Armazeno o primeiro nome da URL (por isso uso +1 para pegar após o '/')
        String firstName = request.requestURI.substring(request.requestURI.lastIndexOf('/') + 1);

        // Faço uma consulta SOQL para buscar os leads, filtrando se o primeiro nome estiver presente
        // Caso nao esteja ele ira retornar a lista de leads completa
        List<Lead> leadsList = String.isNotBlank(firstName) ? 
            [SELECT Id, Name, Email, Phone FROM Lead WHERE FirstName = :firstName] :
            [SELECT Id, Name, Email, Phone FROM Lead];

        // Retorno a lista como JSON, serializando e convertendo para Blob para evitar problemas com caracteres
        resultRest.responseBody = Blob.valueOf(JSON.serialize(leadsList));

        // Defino o status code para 200 (sucesso)
        resultRest.statusCode = 200;
    }
   
        // Método POST para inserir leads
        @HttpPOST
        global static void insertLeads(List<LeadInsertWrapper> leadList) {
    
            // O RestResponse mapeia a resposta da chamada
            RestResponse resultRest = RestContext.response;
    
            // Lista que armazenará os leads que serão inseridos ou atualizados
            List<Lead> leadInsertList = new List<Lead>();
    
            // Lista para armazenar os e-mails dos leads a serem inseridos ou atualizados
            List<String> emailsList = new List<String>();
    
            // Itera sobre a lista recebida (LeadInsertWrapper) e extrai os e-mails
            for(LeadInsertWrapper l : leadList) {
                emailsList.add(l.email);  // Coleta os e-mails de cada lead para fazer a consulta em seguida
            }
    
            // Mapeamento de leads existentes no sistema pelo e-mail, para verificar se o lead já existe
            Map<String, Lead> leadMap = new Map<String, Lead>();
    
            // Consulta no banco de dados todos os leads que possuem os e-mails fornecidos
            // O resultado é armazenado no Map para fácil acesso pelo e-mail
            for(Lead l : [SELECT Id, Email FROM Lead WHERE Email IN :emailsList]) {
                leadMap.put(l.Email, l);
            }
    
            // Itera sobre a lista recebida para inserir ou atualizar leads
            for(LeadInsertWrapper l : leadList) {
                Lead leadInsert;
    
                // Se o e-mail já existir no Map (lead existente), atualiza os dados do lead
                if(leadMap.containsKey(l.email)) {
                    leadInsert = new Lead(
                        LastName = l.sobrenome,
                        Company = l.nome_empresa,
                        Status = l.status_doLead,
                        Email = l.email,
                        FirstName = l.nome,
                        Id = leadMap.get(l.email).Id  // Atualiza o lead com base no ID encontrado
                    );
                } else {
                    // Se o e-mail não existir, cria um novo lead
                    leadInsert = new Lead(
                        LastName = l.sobrenome,
                        Company = l.nome_empresa,
                        Status = l.status_doLead,
                        Email = l.email,
                        FirstName = l.nome
                    );
                }
                leadInsertList.add(leadInsert);  // Adiciona o lead na lista para inserção ou atualização
            }
    
            // Lista de IDs dos leads inseridos ou atualizados com sucesso
            List<String> idsResponse = new List<Id>();
    
            // Realiza o DML upsert para inserir ou atualizar os leads
            if(leadInsertList.size() > 0) {
                Database.UpsertResult[] results = Database.upsert(leadInsertList);
    
                // Verifica o resultado do upsert para saber quais leads foram processados com sucesso
                for(Integer index = 0, size = results.size(); index < size; index++) {
                    if(results[index].isSuccess()) {
                        idsResponse.add(results[index].Id);  // Se sucesso, adiciona o ID do lead
                    } else {
                        idsResponse.add('ERROR');  // Caso de erro, adiciona 'ERROR' (pode melhorar essa lógica para fornecer mais detalhes)
                    }
                }
            }
    
            // Serializa a lista de IDs (ou erros) e define como corpo da resposta
            resultRest.responseBody = Blob.valueOf(JSON.serialize(idsResponse));
    
            // Define o código de status HTTP como 200 (sucesso)
            resultRest.statusCode = 200;
      }
}
