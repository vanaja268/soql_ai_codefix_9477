public with sharing class TC09_MultiVariableInjection {
    public static List<Case> searchCases() {
        String f1 = ApexPages.currentPage().getParameters().get('subject');
        String f2 = ApexPages.currentPage().getParameters().get('status');

        String q =
            'SELECT Id, Subject, Status FROM Case ' +
            'WHERE Subject = \'' + f1 + '\' ' +
            'AND Status = \'' + f2 + '\'';

        return Database.query(q);
    }
}
