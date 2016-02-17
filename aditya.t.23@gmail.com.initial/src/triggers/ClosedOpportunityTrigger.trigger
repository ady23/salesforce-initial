trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {

    List<Task> taskList = new List<Task>();
    
    for(Opportunity o : Trigger.new) {
		
		//Only create Follow Up Task only once when Opp StageName is to 'Closed Won' on Create
		if(Trigger.isInsert) {
			if(o.StageName == 'Closed Won') {
				taskList.add(new Task(Subject = 'Follow Up Test Task', WhatId = o.Id));
			}
		}
		
		//Only create Follow Up Task only once when Opp StageName changed to 'Closed Won' on Update
		if(Trigger.isUpdate) {
			if(o.StageName == 'Closed Won' 
			&& o.StageName != Trigger.oldMap.get(o.Id).StageName) {
				taskList.add(new Task(Subject = 'Follow Up Test Task', WhatId = o.Id));
			}
		}       
    }

    if(taskList.size()>0) {        
        insert taskList;        
    }    
}