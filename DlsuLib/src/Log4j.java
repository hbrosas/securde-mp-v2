import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class Log4j {
	private static final Logger log = LogManager.getLogger(Log4j.class);
		
	public static void main(String[] args) {
		log.debug("Logger debug");
		log.info("Logger.info");
		log.error("Logger error");
	}
}	
	
