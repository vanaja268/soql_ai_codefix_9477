@IsTest
private class TC13_UnitTestSuppression {
    @IsTest
    static void testDynamicQuery() {
        String name = ApexPages.currentPage().getParameters().get('name');
        List<Account> rows = Database.query(
            'SELECT Id, Name FROM Account WHERE Name = \'' + name + '\''
        );
        System.assertNotEquals(null, rows);
    }
}
