<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.ArrayList" %>

<html>
    <head>
        <title>Servlet/JSPの基礎を学ぼう</title>
    </head>
    <body>
    
    	<%
    	 	String user_name = (String) request.getAttribute("name");
    	 	String user_email = (String) request.getAttribute("email");
    	 	String user_adress = (String) request.getAttribute("adress");
    	 	String user_tell = (String) request.getAttribute("tell");
        %>
        
        <h2>入力内容をご確認ください。</h2>
        <p>問題なければ「確定」、修正する場合は「キャンセル」をクリックしてください。</p>
        <table border="1">
            <tr>
                <th>項目</th>
                <th>入力内容</th>
            </tr>
            <tr>
                <td>氏名</td>
                <td><%= user_name %></td>
            </tr>
            <tr>
                <td>メールアドレス</td>
                <td><%= user_email %></td>
            </tr>
           	<tr>
                <td>住所</td>
                <td><%= user_adress %></td>
            </tr>
            <tr>
                <td>電話番号</td>
                <td><%= user_tell %></td>
            </tr>
        </table>

        <p>
            <%-- 確定ボタン（登録に成功した前提で完了画面に遷移） --%>
            <button onclick="location.href='<%= request.getContextPath() %>/complete';">確定</button>

            <%-- キャンセルボタン（前の画面に戻る） --%>
            <button onclick="history.back();">キャンセル</button>
        </p>
    </body>
</html>
