public with sharing class TC04_CountQueryInjection {
    public static Integer countAccounts() {
        String accountType = ApexPages.currentPage().getParameters().get('type');
        return Database.countQuery(
            'SELECT COUNT() FROM Account WHERE Type = \'' + accountType + '\''
        );
    }
}
