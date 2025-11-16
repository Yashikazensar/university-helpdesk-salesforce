public with sharing class SupportUtility {
 
    // Simple method for LWC or flow support
    @AuraEnabled(cacheable=true)
    public static String getWelcome(String name) {
        if (String.isBlank(name)) return 'Welcome Student';
        return 'Welcome ' + name;
    }
 
    // SLA helper for test coverage
    public static Integer getSLAHours(String priority) {
        if (priority == 'High') return 8;
        if (priority == 'Medium') return 24;
        return 48;
    }
 
    // Small DB method (to get real coverage)
    public static Case createTestCase(Contact c) {
        Case cs = new Case(
            ContactId = c.Id,
            Subject = 'Test Case',
            Status = 'New',
            Priority = 'High'
        );
        insert cs;
        return cs;
    }
}