<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.Objects" %>

<html>
    <head>
        <title>Servlet/JSPの基礎を学ぼう</title>
    </head>
    <body>
        <%
        // Servletからのデータを取得
        String userName = (String) request.getAttribute("userName");
        String userEmail = (String) request.getAttribute("userEmail");

        // データが存在しない場合は空文字に置き換え
        userName = Objects.toString(userName, "");
        userEmail = Objects.toString(userEmail, "");
        %>

        <h2>個人情報入力フォーム</h2>
        <form action="<%= request.getContextPath() %>/confirm" method="post">
            <table>
                <tr>
                    <td>氏名</td>
                    <td>
                        <input type="text" name="name">
                    </td>
                </tr>
                <tr>
                    <td>メールアドレス</td>
                    <td>
                       <input type="text" name="email">
                    </td>
                </tr>
                 <tr>
                    <td>住所</td>
                    <td>
                       <input type="text" name="address">
                    </td>
                </tr>
                 <tr>
                    <td>電話番号</td>
                    <td>
                       <input type="text" name="phone_number">
                    </td>
                </tr>
            </table>
            <input type="submit" value="送信">
        </form>
    </body>
</html>
