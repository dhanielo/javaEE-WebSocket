package WebSocket;

import java.io.IOException;
import javax.websocket.OnClose;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

@ServerEndpoint("/listen")
public class ListenEndpoint {

    @OnMessage
    public void onMessage(String message, Session session)
    {
        try {

            session.getBasicRemote().sendText(
                    "<span class='green'>socket@cliente</span> <span class='blue'>: </span><span>"+message+"</span>"
            );

        } catch (IOException ex) {

            ex.printStackTrace();
        }
    }

    @OnOpen
    public void onOpen (Session session)
    {
        System.out.println("Sessão: " + session.getId() + "foi aberta.");

        try {

            String msg = "<span class='purple'>#WebSocket RFC-6455</span><br/>";
                    msg += "<span class='purple'>socket@server</span>" +
                    "<span class='blue'>: </span><span class='orange'>Conexão iniciada.</span>";

            session.getBasicRemote().sendText(msg);

        } catch (IOException ex) {

            ex.printStackTrace();
        }
    }

    @OnClose
    public void onClose (Session session)
    {
        System.out.println("Sessão: " +session.getId()+" finalizada.");
    }
}