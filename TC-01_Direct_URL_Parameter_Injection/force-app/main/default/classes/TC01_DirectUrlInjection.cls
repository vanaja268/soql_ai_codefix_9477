public with sharing class TC01_DirectUrlInjection {
    public static List<Account> findAccounts() {
        String name = ApexPages.currentPage().getParameters().get('name');
        return Database.query(
            'SELECT Id, Name FROM Account WHERE Name = \'' + name + '\''
        );
    }
}
