public class EmailManager {

    public static void sendMail(String address,string subject, string body)
    {
       Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
       string [] toaddress = new string[]{address};
       
       email.setToAddresses(toaddress);

        //Avoid to hit the max number of emails
        //mail.saveAsActivity = false;
        //mail.setTargetObjectId(userId);
    
       email.setSubject(subject);
       email.setPlainTextBody(body);

       Messaging.sendEmail( new Messaging.SingleEmailMessage[] { email } );
    }
}