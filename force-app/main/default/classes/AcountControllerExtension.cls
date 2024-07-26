public class AcountControllerExtension {
public List<Contact> listContact {get; set;}
public Account account {get; set;}

    public AcountControllerExtension(ApexPages.StandardController standardController) {
        //adicionar metodo para puxar Id para pagina de edição
        this.listContact = new List<Contact>();
        this.account = standardController.getRecord() == null ? New Account() : (Account)standardController.getRecord();
        
        if (this.account.Id != null) {
            this.listContact = [SELECT Id, FirstName, LastName, Email from Contact WHERE AccountId = :this.account.Id];
        }
    }   

    /* para redirecionamento para outras paginas, ou apenas atualizar a propria pagina se usa pageRefer  */
    public Contact NewContact(){
        return new Contact();
    }
    public PageReference addContact(){
        this.listContact.add(NewContact());

        return null;
    }

    public PageReference deleteContact(){
        String index = ApexPages.currentPage().getParameters().get('index');
    
        this.listContact.remove(Integer.valueOf(index));

        return null;
    }

    public PageReference saveAccount(){
        upsert Account;

        for (Contact contact : this.listContact) {
            contact.AccountId = account.Id;
        }

        upsert listContact;

        ApexPages.StandardController controller = new ApexPages.StandardController(account);

        return controller.view();
    }
}