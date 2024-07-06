public class updateListContact {
	    public static void updateContacts(){
       List<Contact> queryContact = [SELECT Id, LastName
                              FROM Contact
                              WHERE LastName ='Doe'];
    
            for(Contact contact : queryContact){
                contact.LastName = 'Smith';
            }    
             update queryContact;
   }
}