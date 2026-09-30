public with sharing class TC08_DynamicBindSafe {
    public static List<Account> findAccounts() {
        String name = ApexPages.currentPage().getParameters().get('name');
        return Database.query(
            'SELECT Id, Name FROM Account WHERE Name = :name'
        );
    }
}
