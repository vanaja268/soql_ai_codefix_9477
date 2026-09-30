public with sharing class TC17_MethodSnippetContext {
    public static List<Account> findAccounts() {
        String input = ApexPages.currentPage().getParameters().get('name');
        String queryText =
            'SELECT Id, Name FROM Account WHERE Name = \'' + input + '\'';
        return Database.query(queryText);
    }
}
