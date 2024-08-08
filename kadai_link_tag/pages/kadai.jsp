<%@ page contentType="text/html; charset=UTF-8" %>

<html>
    <head>
        <title>Servlet/JSPの基礎を学ぼう</title>
    </head>
    <body>
        <%-- リンクのクリック時にServletへデータを渡す(GETメソッド) --%>
        <a href="<%= request.getContextPath() %>/j2s?name=侍太郎">名前「侍太郎」をServletへ送信</a>
        <%
        // リクエストスコープの商品名を取得
        String productName = (String) request.getAttribute("productName");
        %>
        <p>Servletからデータを受信しました：<%= productName %>さん、こんにちは！</p>
    </body>
</html>
