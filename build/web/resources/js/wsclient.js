var webSocket;

function openSocket()
{

    if(webSocket !== undefined && webSocket.readyState !== WebSocket.CLOSED) {

        writeResponse(
            "<span class='green'>socket@cliente</span>" +
                "<span class='blue'>: </span><span>j&aacute; existe uma inst&acirc;ncia de WebSocket.</span>"
        );
        return;
    }

    webSocket = new WebSocket("ws://localhost:8080/WebSocket/listen");

    webSocket.onopen = function(event) {

        if(event.data === undefined)
            return;

        writeResponse(event.data);
    };

    webSocket.onmessage = function(event) {

        writeResponse(event.data);
    };

    webSocket.onclose = function(event) {

        writeResponse(
                "<span class='green'>socket@cliente</span>" +
            "<span class='blue'>: </span><span>Conex&atilde;o encerrada.</span>"
        );
    };
}

function send() {

    var text = $("#messageinput").val().trim();

    if(text.length>0) {

        switch (text) {

            case 'open':
                    openSocket();
                break;
            case 'close':
                    closeSocket();
            default:

                webSocket.send(text);
                break;
        }
        $("#messageinput").val('');
    }
}

function closeSocket() {

    webSocket.close();
}

function writeResponse(text) {

    $("#messages").html($("#messages").html() + "<br/>" + text);
    $(".messages").scrollTop($("#messages").height());
}