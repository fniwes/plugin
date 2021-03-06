package nire.nuance;
import android.util.Log;

public class CredentialsParser {
	private byte[] secret;

	public CredentialsParser(String secret) {
		this.secret = hexStringToByteArray(secret);
	}

	public byte[] get() {
		return secret;
	}

	// thanks http://stackoverflow.com/questions/140131/convert-a-string-representation-of-a-hex-dump-to-a-byte-array-using-java
	public static byte[] hexStringToByteArray(String s) {
	    int len = s.length();
	    byte[] data = new byte[len / 2];
	    for (int i = 0; i < len; i += 2) {
	        data[i / 2] = (byte) ((Character.digit(s.charAt(i), 16) << 4)
	                             + Character.digit(s.charAt(i+1), 16));
	    }
	    return data;
}
    
}
