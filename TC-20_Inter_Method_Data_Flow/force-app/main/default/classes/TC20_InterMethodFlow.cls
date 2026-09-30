public with sharing class TC20_InterMethodFlow {
    public static List<Contact> entryPoint() {
        String email =
            ApexPages.currentPage().getParameters().get('email');
        return queryByEmail(email);
    }

    private static List<Contact> queryByEmail(String email) {
        String q =
            'SELECT Id, Name, Email FROM Contact WHERE Email = \'' +
            email +
            '\'';

        return Database.query(q);
    }
}
