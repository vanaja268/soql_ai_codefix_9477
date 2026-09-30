public with sharing class TC02_MultiHopTaint {
    private static String getParam(String key) {
        return ApexPages.currentPage().getParameters().get(key);
    }

    public static List<Contact> findContacts() {
        String input = getParam('id');
        String queryId = input;
        String queryText =
            'SELECT Id, Name FROM Contact WHERE Id = \'' + queryId + '\'';
        return Database.query(queryText);
    }
}
