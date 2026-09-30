public with sharing class TC12_LocalConstantSafe {
    public static List<Lead> findLeads() {
        String safeStatus = 'Open - Not Contacted';

        return Database.query(
            'SELECT Id, Name FROM Lead WHERE Status = \'' + safeStatus + '\''
        );
    }
}
