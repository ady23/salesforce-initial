public class RandomContactFactory {

    public static List<Contact> generateRandomContacts(Integer num,String lastName){
        List<Contact> contactList = new List<Contact>();
        
        for(Integer i=0;i<num;i++){
            String firstName = 'Test '+ (i+1);
            Contact c = new Contact(FirstName = firstName,LastName = lastName);
            contactList.add(c);
        }
        
        return contactlist;
    }
    
}