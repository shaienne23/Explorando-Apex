public class AccountsTriggerHandler {
    public static void onBeforeInsert(List<Account> newAccounts) {
        AccountsTriggerHelper.validatePhone(newAccounts);
    }
}