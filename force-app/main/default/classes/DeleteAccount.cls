public class DeleteAccount {
    public static void deleteAcc(){
        Account deleteAccount = [SELECT Name FROM Account
                                WHERE Name = 'Nova Conta'
                                LIMIT 1];
        	delete deleteAccount;
    }
}