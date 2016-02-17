public class ParkLocator {

    public static String[] country(String name){
        
        ParkService.ParksImplPort parks = new ParkService.ParksImplPort();
        List<String> results = parks.byCountry(name);
        return results;
        
    }
    
    
}