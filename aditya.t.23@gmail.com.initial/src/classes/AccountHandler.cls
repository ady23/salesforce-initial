public class AccountHandler {
    
    public static Account insertNewAccount (String accountName) {
     
        try{
     	 	Account acct = new Account(Name= accountName);
      	 	insert acct;
		system.debug('123');
	 		return acct;	
        }
        
        catch (DmlException e) {
    		System.debug('A DML exception has occurred: ' +e.getMessage());
            return null;    
		}

        
    }

}
