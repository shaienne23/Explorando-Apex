trigger TriggerNewAccount on Account (before insert, before update) {
    for(Account account : Trigger.new){
        if(account.Industry == 'Technology' || account.Industry == 'Finance'){
            account.Rating = 'Hot';
        }
    }
}