public class DailyLeadProcessor implements Schedulable {
    public void execute(SchedulableContext ctx) {
        List<Lead> leadLst = [SELECT Id, Name, LeadSource 
            FROM Lead
            WHERE LeadSource ='' Limit 200];
        for(Lead l:leadLst){
            l.LeadSource='Dreamforce';
        }
        Update leadLst;
    }
}