package edu.securde.manager;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

public class Logging {
	public static final String FILENAME = "C:\\Users\\Hazel\\Documents\\GitHub\\securde-mp-v2\\DlsuLib\\log.txt";
	
	public static void Log(String line) {
		BufferedWriter bw = null;
		FileWriter fw = null;
		
		try {

			File file = new File(FILENAME);

			// if file doesnt exists, then create it
			if (!file.exists()) {
				file.createNewFile();
			}

			// true = append file
			fw = new FileWriter(file.getAbsoluteFile(), true);
			bw = new BufferedWriter(fw);

			bw.write(line);
			bw.newLine();

			System.out.println("Logged");

		} catch (IOException e) {

			e.printStackTrace();

		} finally {
			try {

				if (bw != null)
					bw.close();

				if (fw != null)
					fw.close();

			} catch (IOException ex) {

				ex.printStackTrace();

			}
		}
	}
}
