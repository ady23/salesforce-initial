@isTest
public class ParkLocatorTest {
    
    @isTest static void testCallout(){
        Test.setMock(WebServiceMock.class,new ParkServiceMock());
        List<String> result = ParkLocator.country('India');
        List<String> expectedResult = new List<String>{'test1','test2'};
        System.assertEquals(expectedResult, result);	    
    }

}