package Client;

import java.io.InputStream;
import java.net.Socket;

/**
 *
 * @author ADMIN
 */
public class ClientLinser implements Runnable {

    private Socket socket;
    private InputStream input;

    public ClientLinser(Socket socket) {
        this.socket = socket;
        try {
            this.input = socket.getInputStream();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void run() {
        try {
            byte[] buffer = new byte[1024];
            int byteRead;
            while ((byteRead = input.read(buffer)) != -1) {
                String message = new String(buffer, 0, byteRead);
                System.out.println(message);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

}
