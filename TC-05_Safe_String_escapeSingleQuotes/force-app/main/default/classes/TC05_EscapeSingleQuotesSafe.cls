public with sharing class TC05_EscapeSingleQuotesSafe {
    public static List<Account> findAccounts() {
        String name = ApexPages.currentPage().getParameters().get('name');
        String safeName = String.escapeSingleQuotes(name);
        return Database.query(
            'SELECT Id, Name FROM Account WHERE Name = \'' + safeName + '\''
        );
    }
}
