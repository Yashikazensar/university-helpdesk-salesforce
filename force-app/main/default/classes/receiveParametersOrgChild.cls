global class receiveParametersOrgChild {
    webservice static String createContactRecord(String firstName, String lastName, String title, String email){
        Contact rec = new Contact();
        rec.firstName = firstName;
        rec.lastName = lastName;
        rec.title = title;
        rec.email = email;
 
        insert rec;
        return 'Success';
    }
}