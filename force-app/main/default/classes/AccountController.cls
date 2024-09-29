public class AccountController {
    public String Nome { get; set; }
    public String Phone { get; set; }
    public String selectedRating { get; set; }
    public List<SelectOption> ratingOptions { get; set; }
     
    public void salvarAccount() {
    	try{
               Account objAccount = new Account();
                objAccount.Name = Nome;
                objAccount.Phone = Phone;
            
                insert objAccount;
            
                    //Limpar os campos apos salvamento, é só setar 
                    Nome = null;
                    Phone = null;
 
            ApexPages.addMessage(new ApexPages.message(ApexPages.Severity.CONFIRM, 'Cadastro realizado com sucesso!'));
        } catch (Exception e) {
            ApexPages.addMessage(new ApexPages.message(ApexPages.Severity.ERROR, 'Erro ao salvar o cadastro: ' + e.getMessage()));
        }
    }
    public AccountController() {
        // Obtém os valores do picklist Rating
        ratingOptions = new List<SelectOption>();
        Schema.DescribeFieldResult fieldResult = Account.Rating.getDescribe();
        List<Schema.PicklistEntry> picklistEntries = fieldResult.getPicklistValues();
        
        for (Schema.PicklistEntry entry : picklistEntries) {
            ratingOptions.add(new SelectOption(entry.getValue(), entry.getLabel()));
        }
    }
    
    public PageReference submitRating() {
        // Lógica para lidar com o envio do rating
        System.debug('Rating selecionado: ' + selectedRating);
        ApexPages.addMessage(new ApexPages.Message(ApexPages.Severity.INFO, 'Avaliação enviada com sucesso!'));
        return null;
    }

}