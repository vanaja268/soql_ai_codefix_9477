public with sharing class TC14_MapAccessInjection {
    public static List<Account> findAccounts() {
        Map<String, String> params =
            ApexPages.currentPage().getParameters();

        return Database.query(
            'SELECT Id, Name FROM Account WHERE Name = \'' +
            params.get('name') +
            '\''
        );
    }
}
