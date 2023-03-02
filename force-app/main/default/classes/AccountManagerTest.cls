@IsTest
private class AccountManagerTest {
    
    static testMethod void testMethod1(){
         Id recordId = createTestRecord();
        // Set up a test request
        RestRequest request = new RestRequest();
        request.requestUri =
            'Accounts/'+recordId+'/contacts';
        request.httpMethod = 'GET';
        RestContext.request = request;
        // Call the method to test
        Account acc = AccountManager.getAccount();
        // Verify results
        System.assert(acc != null);
        System.assert(acc.Contacts.size()>0);

}
    // Helper method
    static Id createTestRecord() {
        // Create test record
         Account objAccount = new Account(Name = 'test Account');
        insert objAccount;
        Contact objContact = new Contact(LastName = 'test Contact',
                                         AccountId = objAccount.Id);
        insert objContact;
        Id recordId = objAccount.Id;
        return recordId;
    }    
}