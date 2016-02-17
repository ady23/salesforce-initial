@isTest
private class AnimalLocatorTest {
@isTest static void testPostCallout() {
    // Set mock callout class 
    Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock()); 
    // This causes a fake response to be sent
    // from the class that implements HttpCalloutMock. 
   	String animalName = AnimalLocator.getAnimalNameById(5);
    // Verify that the response received contains fake values
    String expectedValue = 'puppy';
    System.assertEquals(animalName, expectedValue);
    }
}