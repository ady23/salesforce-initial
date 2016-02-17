@isTest
private class TestRestrictContactByName {
    @isTest static void testingInvalidLastNameInsert(){
        Contact con = new Contact(
	    	FirstName='John', LastName='INVALIDNAME',  Phone='(415)555-1213',  Department='Wingo' );
        try{
        Test.startTest();
        Database.SaveResult result= Database.insert(con) ;
        Test.stopTest();
        System.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
        System.assertEquals('The Last Name "'+con.LastName+'" is not allowed for DML', result.getErrors()[0].getMessage());
        }catch (Exception ee){
        
        }
		
        
    } 
}