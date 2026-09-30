public with sharing class TC19_SafeReferenceExample {
    private static final Set<String> ALLOWED_SORT_FIELDS =
        new Set<String>{ 'Name', 'CreatedDate' };

    public static List<Account> sortAccounts() {
        String requested =
            ApexPages.currentPage().getParameters().get('sort');

        String sortColumn =
            ALLOWED_SORT_FIELDS.contains(requested) ? requested : 'Name';

        return Database.query(
            'SELECT Id, Name, CreatedDate FROM Account ORDER BY ' + sortColumn
        );
    }
}
