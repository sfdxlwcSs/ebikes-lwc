@isTest
private class TestRestrictContactByName {
    
    @isTest static void testMethodCon(){
        
        Contact Con = new Contact();
        Con.Email = 'test@test.com';
        Con.MobilePhone = '1234567890';
        Con.LastName = 'INVALIDNAME';
      //  Con.accountid = acc.id;
       
           Test.startTest();
        Database.SaveResult result = Database.insert(con,false);
        Test.stopTest();
        
        System.assert(!result.isSuccess());
        System.assertEquals('The Last Name "INVALIDNAME" is not allowed for DML',
                             result.getErrors()[0].getMessage());
    }

}