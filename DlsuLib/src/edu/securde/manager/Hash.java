package edu.securde.manager;

import org.apache.shiro.crypto.RandomNumberGenerator;
import org.apache.shiro.crypto.SecureRandomNumberGenerator;
import org.apache.shiro.crypto.hash.Sha256Hash;

public class Hash {
	private String hashSalt, hashString;
	
	public Hash(String value) {
		hash(value);
	}
	
	public String getHashSalt() {
		return hashSalt;
	}

	public String getHashString() {
		return hashString;
	}

	public void hash(String value) {
		RandomNumberGenerator rng = new SecureRandomNumberGenerator();
		String salt = rng.nextBytes().toString();
		String hashedPasswordBase64 = new Sha256Hash(value, salt, 1024).toBase64();
		
		System.out.println("This is the hash salt : " + salt.toString());
		System.out.println("This is the hashed password : " + hashedPasswordBase64);
	}

}
