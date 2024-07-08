trigger AccountsTrigger on Account (before insert) {
    if (Trigger.isBefore && Trigger.isInsert) {
        AccountsTriggerHandler.onBeforeInsert(Trigger.new);
    }
}
