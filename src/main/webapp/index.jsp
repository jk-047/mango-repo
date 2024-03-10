<!DOCTYPE html>
<html>
    <head>
        <meta name="_csrf" content="${_csrf.token}"/>
        <meta name="_csrf_header" content="${_csrf.headerName}"/>
        <script src="rpc/brutusin-rpc.js"></script>
        <script language='javascript'>
            var http = brutusin["rpc"].initHttpEndpoint("<%=request.getContextPath() + org.brutusin.rpc.RpcConfig.getInstance().getPath()+"/http"%>");
            var wskt = brutusin["rpc"].initWebsocketEndpoint("<%=request.getContextPath() + org.brutusin.rpc.RpcConfig.getInstance().getPath()+"/wskt"%>");
        </script>
        <script language='javascript'>
            http.ajax({
                service: "rpc.http.version",
                load: function (response) {
                    alert(JSON.stringify(response));
                }
            });
        </script>
    </head>
    <body>
        <h1>helloooo!hhhhhkkkkl;kdhckkkkk;klkhkhkb; Congratulations!</h1>Hi HEllo Annyeonghaseyo namaste....!!!Amrutha JK jin BTS</h1>
</body>
</html>
