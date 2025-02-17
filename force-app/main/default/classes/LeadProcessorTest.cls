@isTest
private class LeadProcessorTest {
      private static testMethod void LeadProcess() 
    {
        List<Lead> lstLead = new List<Lead>();
        for(Integer i=0 ;i <200;i++)
        {
            lstLead.add(new Lead(LastName ='LastName'+i, Company ='demo'+i, City='New York', Country='US', LeadSource='Phone inquiry'));
        }
        
        insert lstLead;
        
        Test.startTest();

            LeadProcessor obj = new LeadProcessor();
            DataBase.executeBatch(obj,200); 
            
        Test.stopTest();
        Lead objL=[Select Id,LeadSource From Lead Limit 1];
        System.assert(objL.LeadSource=='Dreamforce');
    }

}