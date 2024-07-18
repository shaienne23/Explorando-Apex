public class AcountControllerExtension {
public List<Contact> listContact {get; set;}
public Account account {get; set;}

    public AcountControllerExtension(ApexPages.StandardController standardController) {
        this.listContact = new List<Contact>();
        this.account = new Account();
    }

    /* para redirecionamento para outras paginas, ou apenas atualizar a propria pagina se usa pageRerfer  */
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
            contact.Account = account.Id;
        }

        insert listContact;

        ApexPages.StandardController controller = new ApexPages.StandardController(account);

        return controller.view();
    }
}