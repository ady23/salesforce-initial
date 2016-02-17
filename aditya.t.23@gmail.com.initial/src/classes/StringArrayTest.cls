public class StringArrayTest {
    public static List<String> generateStringArray(Integer stringLength){
        List<String> TestStrings = new List<String>();
        
        for(Integer i=0;i<stringLength;i++){
            TestStrings.add('Test '+i);
        }
    
        return TestStrings;
    }
    
}