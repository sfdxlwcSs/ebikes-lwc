/**
 * @description       : 
 * @author            : Somnath Sharma
 * @group             : 
 * @last modified on  : 26-04-2023
 * @last modified by  : Somnath Sharma
**/
public with sharing class ContactController {
   
        @AuraEnabled(cacheable=true)
        public static List<Contact> getContacts() {
            return [
                SELECT FirstName, LastName, Email
                FROM Contact
                WITH SECURITY_ENFORCED
                ORDER BY FirstName
            ];
          //  throw new AuraHandledException('Forced error');
        }
    
}