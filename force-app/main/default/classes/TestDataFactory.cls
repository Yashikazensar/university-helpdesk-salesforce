public class TestDataFactory {
 
    public static Account createAccount() {
        Account a = new Account(Name = 'Test Student', Type='Student');
        insert a;
        return a;
    }
 
    public static Contact createContact(Account a) {
        Contact c = new Contact(
            FirstName='Test',
            LastName='User',
            Email='testuser@example.com',
            AccountId = a.Id
        );
        insert c;
        return c;
    }
}