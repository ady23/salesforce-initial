trigger AccountAddressTrigger on Account (before insert, before update) {
    List<Account> accToUpdate = new List<Account>(); 
    for(Account a : Trigger.New) {
        if(a.BillingPostalCode!=NULL && a.Match_Billing_Address__c==true){
            a.ShippingPostalCode = a.BillingPostalCode;	
            
                   }
    }
    
  
}