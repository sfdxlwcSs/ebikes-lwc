public class AddPrimaryContact implements Queueable {
    private Contact  record;
    private String  stateAbbreviation;
    public AddPrimaryContact(Contact  record, String  stateAbbreviation) {
        this.record = record;
        this.stateAbbreviation = stateAbbreviation;
    }
    public void execute(QueueableContext context) {
        List<contact> insertContact = new List<contact>();
        List<Account> accounts=[Select Id,BillingState From Account Where  BillingState=:stateAbbreviation];
        for (Account acc : accounts) {
          // clone record
          Contact conCopy = record.clone(false, false, false, false);
            conCopy.AccountId=acc.Id;
            insertContact.add(conCopy);
        }
        Insert insertContact;
    }
}