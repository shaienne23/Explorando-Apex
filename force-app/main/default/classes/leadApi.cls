//Para que faça o mapeamento de url
@RestResource(urlMapping='/leads/*')

// necessario adicionar 'global' no lugar de public  para que possa ser utilizado por Apis
global with sharing class leadApi {
    
    //criando o primeiro metodo get
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
    }
}