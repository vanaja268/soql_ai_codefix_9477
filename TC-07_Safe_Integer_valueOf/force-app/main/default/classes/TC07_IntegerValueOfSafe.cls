public with sharing class TC07_IntegerValueOfSafe {
    public static List<Contact> findContacts() {
        String rawAge = ApexPages.currentPage().getParameters().get('age');
        Integer safeAge = Integer.valueOf(rawAge);
        return Database.query(
            'SELECT Id, Name FROM Contact WHERE Age__c = ' + safeAge
        );
    }
}
