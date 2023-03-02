public class AccountHandler {
    
    public static void insertAccount(Integer noOfacc){
        List <Account> addAccounts=new List<Account>();
        Integer N  = 1;
        //create a list to add our accounts
        List<Account> teaFactoryAccounts = new List<Account>();
        while(N  <= noOfacc){
        //display the current counter value
            System.debug('Counter Value before Incrementing ' + N);
            //create a new account
            Account store = new Account();
            store.Name = 'Acme Inc N ' + N;
            store.AccountNumber = 'A000n' + N;
            addAccounts.add(store);
            System.debug(addAccounts);
            //increment the counter
            N = N + 1;
            System.debug('Counter Value after incrementing ' + N);
        }
        System.debug('Size of Account List: ' + addAccounts.size() );
        System.debug('Elements in Account List: ' + addAccounts);
        //insert all of the accounts in the list
        insert addAccounts;
    }
    

}