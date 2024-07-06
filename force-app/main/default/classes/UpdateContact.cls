public class UpdateContact {
    public static void updateContacts(){
       // Contact contact = new Contact();
       Contact queryContact = [SELECT contact.FirstName, contact.LastName, contact.Email
                              FROM Contact
                              WHERE FirstName = 'John' AND LastName = 'Doe'
                              LIMIT 1];
        queryContact.FirstName = 'Daniel';
        queryContact.LastName = 'de Oliveira';
        queryContact.Email = 'danielOliveira@gmail.com';
        
        Update queryContact;
        	
    }
}