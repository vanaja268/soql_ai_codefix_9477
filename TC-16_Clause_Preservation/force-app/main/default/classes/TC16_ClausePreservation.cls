public with sharing class TC16_ClausePreservation {
    public static List<Contact> findContacts() {
        String rawId = ApexPages.currentPage().getParameters().get('id');

        String suffix =
            ' WHERE AccountId = \'' + rawId + '\'' +
            ' ORDER BY CreatedDate DESC LIMIT 10';

        return Database.query(
            'SELECT Id, Name, CreatedDate FROM Contact' + suffix
        );
    }
}
