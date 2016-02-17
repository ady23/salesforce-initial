@isTest
private class TestVerifyDate {
    @isTest static void testCheckDates_WithinRange(){
        Date dateReturnedSecond = VerifyDate.CheckDates(date.parse('1/14/2016'), date.parse('1/16/2016'));
        System.assertEquals(date.parse('1/16/2016'), dateReturnedSecond);
        
    }
     @isTest static void testCheckDates_OutofRange(){
        Date dateReturnedEOM = VerifyDate.CheckDates(date.parse('1/14/2016'), date.parse('2/16/2015'));
        System.assertEquals(date.parse('1/31/2016'), dateReturnedEOM);
        
    }
    	
    
}