public class UpdateAccount {
    public static void updateAcc(){
        Account updateAccount = [SELECT Name
                                FROM Account WHERE
                                Name = 'Nova Conta'
                                LIMIT 1];
        updateAccount.Name = 'Serviços Financeiros';
            update updateAccount;
    }
}