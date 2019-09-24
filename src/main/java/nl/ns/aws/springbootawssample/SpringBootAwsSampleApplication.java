package nl.ns.aws.springbootawssample;

import java.net.InetAddress;
import java.net.UnknownHostException;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class SpringBootAwsSampleApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringBootAwsSampleApplication.class, args);
	}

	@GetMapping("/")
	public String helloWorld() {
        String hostName = "";
        try {
            hostName = InetAddress.getLocalHost().getHostName();
        } catch (UnknownHostException e) {
            // ignore, could not get hostname
        }
        return "Hello World [" + hostName + "]";
    }
}
