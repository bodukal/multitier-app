package com.cyat.backend;

import com.sun.net.httpserver.HttpServer;
import java.io.IOException;
import java.io.OutputStream;
import java.net.InetSocketAddress;

public class Main {
    public static void main(String[] args) throws IOException {
        HttpServer server = HttpServer.create(new InetSocketAddress(8080), 0);
        server.createContext("/", exchange -> {
            String response = "Hello from backend!";
            exchange.sendResponseHeaders(200, response.getBytes().length);
            OutputStream os = exchange.getResponseBody();
            os.write(response.getBytes());
            os.close();
        });
        server.setExecutor(null);
        server.start();
        System.out.println("Backend service is running on port 8080...");
        
        // Keep the main thread alive
        try {
            Thread.currentThread().join();
        } catch (InterruptedException e) {
            System.out.println("Server interrupted, shutting down...");
            server.stop(0);
        }
    }
}
