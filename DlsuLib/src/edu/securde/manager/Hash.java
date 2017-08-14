package edu.securde.manager;

import org.apache.shiro.crypto.RandomNumberGenerator;
import org.apache.shiro.crypto.SecureRandomNumberGenerator;
import org.apache.shiro.crypto.hash.Sha256Hash;

public class Hash {
	private String hashSalt, hashString;
	
	public Hash(String value, String saltvalue) {
		String hash = "";
		hash = getHash(value,saltvalue);
	}
	
	public String getHashSalt() {
		return hashSalt;
	}

	public String getHashString() {
		return hashString;
	}

	public static String getHash(String value, String saltvalue) {
		String hashedPasswordBase64 = new Sha256Hash(value, saltvalue, 1024).toBase64();
		System.out.println("This is the hashed password : " + hashedPasswordBase64);
		
		return hashedPasswordBase64;
	}
	
}
