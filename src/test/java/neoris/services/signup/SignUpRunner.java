package neoris.services.signup;

import com.intuit.karate.junit5.Karate;

public class SignUpRunner {

    @Karate.Test
    Karate testSample() {
        return Karate.run("postSignUp").relativeTo(getClass());
    }
}
