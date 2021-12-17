@isTest
    private class gsk_CLS_core_OrganizationDetails_Test {
	@isTest static void testProd() {
		String s = test.test();
		System.assert( 'PROD'==s | 'FULL'==s |'RBD'==s |'DEV'==s);			
	}		
}