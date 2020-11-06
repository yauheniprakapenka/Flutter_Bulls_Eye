    package tests

    import api.apiScript.ApiScriptAuthorizeToProfile
    import asserts.AssertMethods
    import asserts.SbpBankAsserts
    import asserts.SbpCustomerAccountAsserts
    import constants.PhoneConstant
    import org.junit.Test

    class ApiSbpEmulatorTests {

        @Test
        fun verifySbpCustomerAccount() {
            SbpCustomerAccountAsserts.verify()
        }

        @Test
        fun verifySbpBank() {
            SbpBankAsserts.verify()
        }

        @Test
        fun setAccountDefault() {
            val apiScriptAuthorizeToProfile = ApiScriptAuthorizeToProfile()
            apiScriptAuthorizeToProfile.authorize(PhoneConstant.garantInvest_7_000_901_01_12)

            AssertMethods.setDefaultAccountSuccess()
        }




    }

