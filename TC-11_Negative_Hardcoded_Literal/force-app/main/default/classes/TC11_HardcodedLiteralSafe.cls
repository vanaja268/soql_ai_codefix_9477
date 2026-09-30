public with sharing class TC11_HardcodedLiteralSafe {
    public static List<Account> findAccounts() {
        return Database.query(
            'SELECT Id, Name FROM Account WHERE Name = \'Test\''
        );
    }
}
