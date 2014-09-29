<!DOCTYPE html>
<html>
    <head>
        <title>ASD JEE</title>
        <meta charset="UTF-8">
        <link rel="stylesheet" href="resources/css/bootstrap.min.css">
        <link rel="stylesheet" href="resources/css/bootstrap-theme.min.css">
        <link rel="stylesheet" href="resources/css/style.css">
    </head>
    <body>
        <div class="container">

            <div class="header">
                <h3 class="text-muted"><span class="orange">Arquitetura de Aplicativos JEE</span> - API WebSocket (JSR-356)</h3>
            </div>

            <div class="row jumbotron">

                <div class="col-md-6">
                    <img src="resources/imgs/wsRFC6455.png"/>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="messageinput" value=""/>
                        </div>
                        <div class="col-sm-2">
                            <button type="button"
                                    class="btn btn-primary"
                                    name="send" id="send" onclick="send();">Enviar</button>
                        </div>
                        <div class="col-sm-12 header-space">
                            <div class="messages">
                                <div  id="messages"></div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <footer>
                <div class="page-header">
                    <h3><small>Developed With:</small></h3>
                </div>
                <div class="row">
                    <div class="col-md-2" style="margin-top:-5px;">
                        <img src="resources/imgs/javaee.png"/>
                    </div>
                    <div class="col-md-2" style="width: 270px;">
                        <div style="margin-top:10px;">
                            <img src="resources/imgs/glassfish.png" style="display: inline;" width="100px" height="100px"/>
                            <span style="color:#E88A43;font-size:22px;font-weight:bold; vertical-align: middle;margin-left:5px;">GlassFish</span>
                        </div>
                    </div>
                    <div class="col-md-2" style="margin-top:18px;">
                        <img src="resources/imgs/jquery.jpg"/>
                    </div>
                    <div class="col-md-2" style="width: 100px;">
                        <img src="resources/imgs/html5.png" width="60px;" height="60px;"/>
                    </div>
                    <div class="col-md-2">
                        <img src="resources/imgs/bootstrap.png" width="60px;" height="60px;"/>
                    </div>
                </div>
            </footer>
        </div>

        <script type="text/javascript" src="resources/js/jquery-1.11.1.min.js"></script>
        <script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
        <script type="text/javascript" src="resources/js/wsclient.js"></script>
        <script type="text/javascript">

            $(document).ready(function() {

                openSocket();

                $("#messageinput").keypress(function(e) {

                    if (e.which == 13) {
                        send();
                    }
                });
            });
        </script>
    </body>
</html>