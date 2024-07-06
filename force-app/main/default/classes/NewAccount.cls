public class NewAccount {
    public static void newAccounts(){
        Account newAccount = new Account();
        newAccount.Name = 'Nova Conta';
        newAccount.Industry = 'Technology';
        
        insert newAccount;
    }
}