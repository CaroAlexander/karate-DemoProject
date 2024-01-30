package user;

import com.intuit.karate.Runner;
import org.junit.jupiter.api.Test;

public class ManagementTest {

    @Test
    void testParallel(){
        Runner.path("classpath:user").tags("~@ignore").parallel(4);
    }

    public static void generateReport(String karateOutpitPath){

    }
}
