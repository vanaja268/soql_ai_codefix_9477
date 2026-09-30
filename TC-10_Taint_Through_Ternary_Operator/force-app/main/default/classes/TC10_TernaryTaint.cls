public with sharing class TC10_TernaryTaint {
    public static List<Account> findAccounts() {
        String input = ApexPages.currentPage().getParameters().get('name');
        String filter = (input != null) ? input : 'DefaultName';

        return Database.query(
            'SELECT Id, Name FROM Account WHERE Name = \'' + filter + '\''
        );
    }
}
