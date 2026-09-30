public with sharing class TC15_TagLeakageTarget {
    public static List<Contact> findContacts() {
        String email = ApexPages.currentPage().getParameters().get('email');
        return Database.query(
            'SELECT Id, Email FROM Contact WHERE Email = \'' + email + '\''
        );
    }
}
