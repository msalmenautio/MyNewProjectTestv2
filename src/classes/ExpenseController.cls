//TODO: ALWAYS be sure to substitute your org's namespace where you see <namespace>
public class ExpenseController {
   
    //Action method to return the expense list called from client side JavaScript controller
    @AuraEnabled
    public static List<a00135439__Expense__c> getExpenses() {

        return [SELECT id
                    ,Name
                    ,a00135439__Amount__c
                    ,a00135439__Client__c
                    ,a00135439__Date__c
                    ,a00135439__Reimbursed__c
                    ,a00135439__Approved__c 
                FROM 
                    a00135439__Expense__c 
                ORDER BY 
                    createdDate ASC
               ];
    }    

    //Save method called from client side JavaScript controller
    @AuraEnabled
    public static a00135439__Expense__c saveExpense(a00135439__Expense__c expense) {
        upsert expense;
        return expense;
    }
   
}