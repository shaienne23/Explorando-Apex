public class DeleteContact {
    public static void deleteContact(){
        Contact queryDeleteContact = [SELECT FirstName, LastName, Email
                          FROM Contact
                          WHERE Email = 'johndoe@example.com'
                          LIMIT 1];
        delete queryDeleteContact;
    }
}