public class AccountsTriggerHelper {
    public static void validatePhone(List<Account> accounts) {
        for (Account acc : accounts) {
            if (acc.Phone == null) {
                acc.addError('Por favor informar telefone');
            } else if (acc.Phone.length() < 11) {
                acc.addError('Por favor informar telefone com DDD');
            }
        }
    }
}
