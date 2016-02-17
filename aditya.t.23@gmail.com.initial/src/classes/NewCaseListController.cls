public class NewCaseListController {
    
    public List<Case> getNewCases(){
        List<Case> results = Database.query('SELECT ID from Case where status = \'New\'');
        return results;
    }

}