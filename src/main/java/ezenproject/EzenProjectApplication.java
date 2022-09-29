package ezenproject;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

@SpringBootApplication
public class EzenProjectApplication extends SpringBootServletInitializer{

	public static void main(String[] args) {
		SpringApplication.run(EzenProjectApplication.class, args);
		
//		서버 올릴 때 필요한 작업이라고 함
		final AnnotationConfigApplicationContext annotationConfigApplicationContext = new AnnotationConfigApplicationContext();
	    annotationConfigApplicationContext.register(CorsRefFilter.class);
	    annotationConfigApplicationContext.refresh();

	}
	
	
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder builder) {
		
		return builder.sources(EzenProjectApplication.class);
	}

}
