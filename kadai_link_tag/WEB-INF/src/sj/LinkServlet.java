package sj;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LinkServlet extends HttpServlet {
	// GETメソッドのリクエスト受信時に実行されるメソッド
    public void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    	
    	// リクエスト・レスポンスの設定
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
    	
       	RequestDispatcher dispatcher = request.getRequestDispatcher("/index.jsp");
        dispatcher.include(request, response);

        getJspData(request, response);
    }

    // JSPから受け取ったデータを取得するメソッド
    private void getJspData(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

        // リクエストのエンコード設定
        request.setCharacterEncoding("UTF-8");

        // JSPからのリクエストデータ取得
        String userName = request.getParameter("name");

        // レスポンスのコンテンツタイプ設定
        response.setContentType("text/html; charset=UTF-8");
        
        request.setAttribute( "productName", userName );
        RequestDispatcher dispatcher = request.getRequestDispatcher("/pages/kadai.jsp");
        dispatcher.forward(request, response);
    }
}
