package Server;

import java.net.ServerSocket;
import java.net.Socket;
import java.util.ArrayList;
import java.util.List;

public class Server {
    private static final int PORT = 5000;
    private List<ClientHandler> clients = new ArrayList<>();
    
    public void startServer() {
        try {
            ServerSocket serverSocket = new ServerSocket(PORT);
            System.out.println("Server started on PORT: " + PORT);
            
            while (true) {
                Socket clientSocket = serverSocket.accept();
                System.out.println("New connection from IP: " + clientSocket.getInetAddress().getHostAddress());
                
                ClientHandler clientHandler = new ClientHandler(clientSocket, System.currentTimeMillis() + "", this);
                clients.add(clientHandler);
                new Thread(clientHandler).start();
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public void broadcastMessage(String message) {
        for (ClientHandler client : clients) {
            client.sendMessage(message);
        }
    }
    
    public static void main(String[] args) {
        new Server().startServer();
    }
}
