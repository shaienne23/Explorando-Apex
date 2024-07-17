public class AcountControllerExtension {
public List<Contact> listContact {get; set;}

    public AcountControllerExtension(ApexPages.StandardController standardController) {
        this.listContact = new List<Contact>();
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
}