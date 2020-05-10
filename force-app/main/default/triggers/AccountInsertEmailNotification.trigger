trigger AccountInsertEmailNotification on Account (before insert) {
    if(Trigger.isInsert){
        EmailManager.sendMail('siva7a@gmail.com','Salesforce Account Insert Notification','Hi Siva This is to inform you that you are created one account in salesforce development edition');
    }
}