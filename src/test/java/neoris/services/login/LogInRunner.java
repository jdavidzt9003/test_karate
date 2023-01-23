package neoris.services.login;

import com.intuit.karate.junit5.Karate;

public class LogInRunner {

    @Karate.Test
    Karate testSample() {
        return Karate.run("postLogin").relativeTo(getClass());
    }
}
