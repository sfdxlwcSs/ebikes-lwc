@RestResource(urlMapping='/Accounts/*/contacts')
global  with sharing class AccountManager {
    
    
    @HttpGet
    global static Account getAccount() {
        RestRequest request = RestContext.request;
        // grab the caseId from the end of the URL
        String accId = request.requestURI.substringBetween('Accounts/','/contacts');
        system.debug(accId);
          Account objAccount = [SELECT Id,Name,(SELECT Id,Name FROM Contacts) FROM Account WHERE Id = :accId LIMIT 1];
        return objAccount;
    }

}