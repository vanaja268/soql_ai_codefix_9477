public with sharing class TC06_IdValueOfSafe {
    public static List<Account> findAccount() {
        String rawId = ApexPages.currentPage().getParameters().get('id');
        Id accountId = Id.valueOf(rawId);
        return Database.query(
            'SELECT Id, Name FROM Account WHERE Id = \'' + accountId + '\''
        );
    }
}
