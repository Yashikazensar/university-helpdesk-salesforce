@isTest
public class SupportUtility_Test {
 
    @isTest
    static void testWelcomeMessage() {
        String r1 = SupportUtility.getWelcome(null);
        System.assertEquals('Welcome Student', r1);
 
        String r2 = SupportUtility.getWelcome('Kunal');
        System.assertEquals('Welcome Kunal', r2);
    }
 
    @isTest
    static void testSLAHours() {
        System.assertEquals(8, SupportUtility.getSLAHours('High'));
        System.assertEquals(24, SupportUtility.getSLAHours('Medium'));
        System.assertEquals(48, SupportUtility.getSLAHours('Low'));
    }
 
    @isTest
    static void testCaseCreation() {
 
        // create test data
        Account a = TestDataFactory.createAccount();
        Contact c = TestDataFactory.createContact(a);
 
        // call method under test
        Case cs = SupportUtility.createTestCase(c);
 
        // verify case fields
        System.assertEquals('Test Case', cs.Subject);
        System.assertEquals('High', cs.Priority);
        System.assertEquals('New', cs.Status);
 
        // verify it exists in database
        Case fetched = [SELECT Id, Subject FROM Case WHERE Id = :cs.Id];
        System.assertEquals('Test Case', fetched.Subject);
    }
}