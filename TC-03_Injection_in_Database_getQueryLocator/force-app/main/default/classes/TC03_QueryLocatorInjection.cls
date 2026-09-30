public with sharing class TC03_QueryLocatorInjection {
    public static Database.QueryLocator buildLocator() {
        String status = ApexPages.currentPage().getParameters().get('status');
        return Database.getQueryLocator(
            'SELECT Id, Name FROM Case WHERE Status = \'' + status + '\''
        );
    }
}
