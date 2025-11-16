@isTest
public class receiveParametersOrgChild_Test {
 
    @isTest
    static void testCreateContactRecord() {
 
        // Call the method
        String response = receiveParametersOrgChild.createContactRecord(
            'Kunal',
            'Narkhede',
            'Student',
            'kunal@test.com'
        );
 
        // Validate response
        System.assertEquals('Success', response);
 
        // Validate contact was inserted
        Contact c = [SELECT Id, FirstName, LastName, Email
                     FROM Contact
                     WHERE Email = 'kunal@test.com'
                     LIMIT 1];
 
        System.assertEquals('Kunal', c.FirstName);
        System.assertEquals('Narkhede', c.LastName);
    }
}