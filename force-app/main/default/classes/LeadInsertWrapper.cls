//Retirei o 'with sharing' pois essa classe será apenas uma estrutura
global  class LeadInsertWrapper {
    // este seria a estrutura de um recebimento
    public string sobrenome;
    public string nome_empresa;
    public string status_doLead;
    public string email;
    public string nome;

    //Porem eu quero receber varios registros de Leads, para isso quero uma estrutura de varios List
    //Para isso criarei um metodo Lista 
    public LeadInsertWrapper() {

    }
}