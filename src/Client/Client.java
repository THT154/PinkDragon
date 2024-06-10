
package Client;

import java.io.OutputStream;
import java.net.Socket;
import java.util.Scanner;
import user.UserReport;


public class Client {
    private static final String URL = "localhost";
    private static final int PORT = 5000;
    
    private UserReport userReport = new UserReport();
    
    public void startClient(){
        try {
            Socket socket = new Socket(URL,PORT);
//            userReport.jTextArea1.append("Đã kết nối đến phòng hỗ trợ ");
//            userReport.jTextArea1.append("\nNếu chưa nhận được phản hồi từ quản lí. Xin vui lòng đợi ít phút...");
             System.out.println("Connection to Room Helper");
             System.out.println("Please wait a few minutes if the support person has not responded");
            
    
            ClientLinser clientLinser = new ClientLinser(socket);
            new Thread(clientLinser).start();
            
            OutputStream output = socket.getOutputStream();
            while(true){
                Scanner k = new Scanner(System.in);
                String message = k.nextLine();
                 output.write(message.getBytes());
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
    }
    
    
}
