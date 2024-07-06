public class LeadManager {
	public List<Lead> leadsList;
    
    public LeadManager() {
        leadsList = new List<Lead>();
    }
    public void adicionarLead(String nome, String sobrenome, String email, String telefone, String cidade, String empresa) {
        Lead novoLead = new Lead();
        novoLead.FirstName = nome;
        novoLead.LastName = sobrenome;
        novoLead.Email = email;
        novoLead.Phone = telefone;
        novoLead.City = cidade;
        novoLead.Company = empresa;
        
        leadsList.add(novoLead);
        
        insert novoLead;
    }
    public void imprimirLeads() {
        System.debug('---- Lista de Leads ----');
        for(Lead lead : leadsList) {
            System.debug('Nome: ' + lead.FirstName + ' ' + lead.LastName);
            System.debug('Email: ' + lead.Email);
            System.debug('Telefone: ' + lead.Phone);
            System.debug('Cidade: ' + lead.City);
            System.debug('Empresa: ' + lead.Company);
        }
    }
}