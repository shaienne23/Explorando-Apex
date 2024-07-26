public class AccountPDFController {
   Id accountId;
   
   
    public AccountPDFController() {
        this.accountId = ApexPages.currentPage().getParameters().get('Id');
    }

    public Account getCurrentAccount(){
        return [SELECT Name, Website, Phone FROM Account WHERE id =: this.accountId];
    }

    public List<Contact> getContacts(){
        return [SELECT FirstName, LastName, Email from Contact WHERE accountId =: this.accountId];
    }
}