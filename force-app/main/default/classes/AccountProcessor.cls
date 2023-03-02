public class AccountProcessor {
    @future
    public static void countContacts(Set<Id> accIds){
        
        List<Contact> conList=[Select Id,AccountId From Contact where AccountId IN:accIds];
        Map<Id,Integer> accMap=new Map<Id,Integer>();
        for(Contact obj:conList){
            if(accMap.containsKey(obj.AccountId)){
                accMap.put(obj.AccountId,accMap.get(obj.AccountId)+1);
            }
            else{
                accMap.put(obj.AccountId,1);
            }
            
        }
        List<Account> accList=new List<Account>();
        for(Account acc:[Select Id,Number_Of_Contacts__c From Account Where Id In:accIds]){
            acc.Number_Of_Contacts__c=accMap.get(acc.Id);
            accList.add(acc);
        }
        Update accList;
        
        
    }

}