public with sharing class TC18_DiscardedQueryResult {
    public static void runQuery() {
        String name = ApexPages.currentPage().getParameters().get('name');

        Database.query(
            'SELECT Id, Name FROM Account WHERE Name = \'' + name + '\''
        );

        System.debug('Query executed');
    }
}
