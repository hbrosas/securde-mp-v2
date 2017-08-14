import java.io.*;

public class Logs {
	public static final File log = new File("C:/Users/Ted/Deskotp/Log.txt");
	
	public Logs() {
		
	}
	
	public static void writelogs(String value) {
		try {
			FileWriter writer = new FileWriter(log,true);
			writer.write(log+"\n");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
