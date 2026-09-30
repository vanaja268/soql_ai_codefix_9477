public with sharing class TC19_DynamicIdentifierInjection {
    public static List<Account> sortAccounts() {
        String sortColumn =
            ApexPages.currentPage().getParameters().get('sort');

        String q =
            'SELECT Id, Name, CreatedDate FROM Account ORDER BY ' +
            sortColumn;

        return Database.query(q);
    }
}
