public class RandomContactFactory {
    
    public static List<Contact> generateRandomContacts (Integer noOfContacts,String lastName){
        List<Contact> conLst=new List<Contact>();
        for(Integer i=0; i<noOfContacts; i++){
            Contact con = new Contact(
               FirstName='Test '+i,
               LastName = lastName
            ); 
            conLst.add(con);
        }
        
        return conLst;
        
    }

}