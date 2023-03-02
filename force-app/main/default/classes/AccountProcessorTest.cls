@isTest
private class AccountProcessorTest {
  public static testmethod void TestAccountProcessorTest() 
    {
        Account a = new Account();
        a.Name = 'Test Account';
        Insert a;

        Contact cont = New Contact();
        cont.FirstName ='Bob';
        cont.LastName ='Masters';
        cont.AccountId = a.Id;
        Insert cont;
         Contact cont2 = New Contact();
        cont2.FirstName ='Bob2';
        cont2.LastName ='Masters';
        cont2.AccountId = a.Id;
        Insert cont2;
        
        set<Id> setAccId = new Set<ID>();
        setAccId.add(a.id);
 
        Test.startTest();
            AccountProcessor.countContacts(setAccId);
        Test.stopTest();
        
        Account ACC = [select Number_of_Contacts__c from Account where id = :a.id LIMIT 1];
        System.assertEquals ( Integer.valueOf(ACC.Number_of_Contacts__c) ,2);
  }
}