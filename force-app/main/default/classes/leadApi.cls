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

   /* @HttpPOST
    global static void postLeads(){

    }*/
}