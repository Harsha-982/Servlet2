import javafx.scene.effect.Blend;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/profile")
public class profile extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        PrintWriter out=response.getWriter();

        response.setHeader("Cache-Control","no-cache , no-store , must-revalidate");
        request.getRequestDispatcher("link.jsp").include(request,response);
        Cookie[] cookies=request.getCookies();
        Cookie j=new Cookie("JSESSIONID","");
        j.setMaxAge(0);
        response.addCookie(j);
        if(cookies!=null){
            for(Cookie cookie:cookies) {
                if (!cookie.getName().equals("JSESSIONID")) {
                    out.println(cookie.getName() + " : " + cookie.getValue());
                }
            }
        }

        else{
            request.getRequestDispatcher("index.jsp").include(request,response);
        }
    }
}
