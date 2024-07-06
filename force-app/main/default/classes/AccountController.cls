public class AccountController {
    public String Nome { get; set; }
    public String Phone { get; set; }
     
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
}